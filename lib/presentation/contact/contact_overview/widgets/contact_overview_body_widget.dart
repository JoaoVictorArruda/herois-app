import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/contact/contact_watcher/contact_watcher_bloc.dart';
import 'package:herois/presentation/contact/contact_overview/widgets/contact_card_widget.dart';
import 'package:herois/presentation/contact/contact_overview/widgets/critical_failure_display.dart';
import 'package:herois/presentation/core/error_card.dart';

class ContactOverviewBody extends StatelessWidget {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final Widget body = Column(
      children: <Widget>[
        BlocBuilder<ContactWatcherBloc, ContactWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (state) => Container(),
              loadInProgress: (state) => const Center(
                child: CircularProgressIndicator(),
              ),
              // (_) => Container(),
              loadSuccess: (state) {
                if(state.contacts.size == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Center(
                        child: Text("Você não possui mensagens!")
                    ),
                  );
                }
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.78,
                    child: ListView.builder(
                      shrinkWrap: true,
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        final contact = state.contacts[index];
                        if (contact.failureOption.isSome()) {
                          return ErrorCard(errorObject: contact.failureOption);
                        }
                        return ContactCard(contact: contact);
                      },
                      itemCount: state.contacts.size,
                    ),
                  );
              },
              loadFailure: (state) {
                return CriticalFailureDisplay(failure: state.contactFailure);
                // return CriticalFailureDisplay(
                //   failure: state.contactFailure,
                // );
              },
            );
          },
        ),
      ],
    );
    return body;
  }
}
