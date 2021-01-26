import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests/request_watcher/request_watcher_bloc.dart';
import 'package:herois/presentation/requests/request_overview/widgets/critical_failure_display_widget.dart';
import 'package:herois/presentation/requests/request_overview/widgets/error_request_card_widget.dart';
import 'package:herois/presentation/requests/request_overview/widgets/request_card_widget.dart';

class RequestOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestWatcherBloc, RequestWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final request = state.requests[index];
                  if (request.failureOption.isSome()) {
                    return ErrorRequestCard(request: request);
                  }
                  return RequestCard(request: request);
                },
                itemCount: state.requests.size,
              ),
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.requestFailure,
            );
          },
        );
      },
    );
  }
}
