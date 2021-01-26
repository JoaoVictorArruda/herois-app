import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/requests_search/request_search_watcher/request_search_watcher_bloc.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/infrastructure/requests_search/request_search_filter_repository.dart';
import 'package:herois/presentation/requests_search/request_search_filter/request_search_filter_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterRequestWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          _openFilterDialog(context);
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: const Icon(
            Icons.filter_list,
          ),
        ),
      ),
    );
  }

  Future _openFilterDialog(BuildContext context) async {
    final RequestSearchFilter requestSearchFilter = await RequestSearchFilterRepository(FirebaseFirestore.instance).get();
    await Navigator.of(context).push(MaterialPageRoute<RequestSearchFilter>(
        builder: (BuildContext context) {
          return RequestSearchFilterFormPage(editedRequestSearchFilter: requestSearchFilter);
        },
    ));
    context.bloc<RequestSearchWatcherBloc>().add(const RequestSearchWatcherEvent.watchNearbyStarted());
  }
}
