import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';
import 'package:herois/presentation/info/info_overview/widgets/critical_failure_display_widget.dart';
import 'package:herois/presentation/info/info_overview/widgets/error_info_card_widget.dart';
import 'package:herois/presentation/info/other_info_overview/widgets/other_info_card_widget.dart';

class OtherInfoOverviewBody extends StatelessWidget {

  final String userId;

  const OtherInfoOverviewBody({Key key, this.userId}) : super(key: key);

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
                      const OtherInfoCard(info: null, userId: "")
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
                            leading: IconButton(
                              icon: const Icon(Icons.arrow_back, color: Colors.black,),
                              onPressed: () {
                                ExtendedNavigator.of(context).pop();
                              },
                            ),
                          ),
                            OtherInfoCard(info: info, userId: userId)
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
              }, loadListSuccess: (LoadListSuccess value) { return Container(); },
            );
          },
        ),
      ],
    );
    return body;
  }
}
