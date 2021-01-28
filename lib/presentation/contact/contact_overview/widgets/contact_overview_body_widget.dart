import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/contact/contact_watcher/contact_watcher_bloc.dart';
import 'package:herois/presentation/contact/contact_overview/widgets/contact_card_widget.dart';

class ContactOverviewBody extends StatelessWidget {
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
                  return Center(child: Text("Você não possui mensagens"));
                }
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final contact = state.contacts[index];
                      if (contact.failureOption.isSome()) {
                        return const Text("ErrorCard");
                      }
                      return ContactCard(contact: contact);
                    },
                    itemCount: state.contacts.size,
                  );
              },
              loadFailure: (state) {
                return const Text("CriticalFailureDisplay");
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
