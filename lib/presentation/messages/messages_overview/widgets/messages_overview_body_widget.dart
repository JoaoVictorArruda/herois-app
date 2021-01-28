import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/message/message_watcher/message_watcher_bloc.dart';
import 'package:herois/presentation/messages/messages_overview/widgets/message_card_widget.dart';
import 'package:herois/presentation/requests/request_overview/widgets/critical_failure_display_widget.dart';
import 'package:herois/presentation/requests/request_overview/widgets/error_request_card_widget.dart';

class MessageOverviewBody extends StatelessWidget {

  bool needScroll = true;

  _scrollToEnd(ScrollController scrollController) async {
    if(needScroll && scrollController.position != null) {
      needScroll = false;
      scrollController.animateTo(scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 100), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    WidgetsBinding.instance.addTimingsCallback((_) => _scrollToEnd(scrollController));
    return BlocBuilder<MessageWatcherBloc, MessageWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            Widget card = Flexible(
                child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final message = state.messages[index];
                    if (message.failureOption.isSome()) {
                      return ErrorRequestCard(request: null);
                    }
                    return MessageCard(message: message);
                  },
                  itemCount: state.messages.size,
                )
            );
            needScroll = true;
            return card;
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: null,
            );
          },
        );
      },
    );
  }
}
