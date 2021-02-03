import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests_search/request_search_watcher/request_search_watcher_bloc.dart';
import 'package:herois/presentation/core/error_card.dart';
import 'package:herois/presentation/requests/request_overview/widgets/critical_failure_display_widget.dart';
import 'package:herois/presentation/requests_search/request_search_overview/widgets/request_search_card_widget.dart';

class RequestSearchOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestSearchWatcherBloc, RequestSearchWatcherState>(
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
                    return ErrorCard(errorObject: request.failureOption);
                  }
                  if(state.userId == request.user.getOrCrash() || !state.requestSearchFilter.bloodType.getOrCrash().contains('|'+request.bloodType.getOrCrash()+'|')) {
                    return Container();
                  }
                  return RequestSearchCard(request: request);
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
