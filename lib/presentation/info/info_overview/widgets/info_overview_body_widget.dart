import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';
import 'package:herois/presentation/info/info_overview/widgets/critical_failure_display_widget.dart';
import 'package:herois/presentation/info/info_overview/widgets/error_info_card_widget.dart';
import 'package:herois/presentation/info/info_overview/widgets/info_card_widget.dart';
import 'package:herois/presentation/info/other_info_overview/widgets/other_info_card_widget.dart';

class InfoOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget body = Column(
      children: <Widget>[
        BlocBuilder<InfoWatcherBloc, InfoWatcherState>(
          builder: (context, state) {
            return state.map(
              (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {
                if (state.info.isVisible == null) {
                  return Column(
                    children: [
                      AppBar(
                        title: const Text(""),
                      ),
                      const InfoCard(info: null)
                    ],
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final info = state.info;
                      if (info.failureOption.isSome()) {
                        return ErrorInfoCard(info: info);
                      }
                      return Column(
                        children: [
                          AppBar(
                            title: const Text(""),
                            elevation: 0,
                            backgroundColor: Colors.white,
                          ),
                              InfoCard(info: info)
                          // AppBar(
                          //   title: Text(info.name.getOrCrash()),
                          // ),
                        ],
                      );
                    },
                    itemCount: 1,
                  );
                }
              },
              loadFailure: (state) {
                return CriticalFailureDisplay(
                  failure: state.infoFailure,
                );
              },
              loadListSuccess: (state) {
                if (state.info.size == 0) {
                  return const Text("Nenhum resultado encontrado");
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final info = state.info[index];
                      if (info.failureOption.isSome()) {
                        return ErrorInfoCard(info: info);
                      } else if(info.id.getOrCrash() == state.userId) {
                        return Container();
                      }
                      return OtherInfoCard(info: info);
                    },
                    itemCount: state.info.size,
                  );
                }
              },
            );
          },
        ),
      ],
    );
    return body;
  }
}
