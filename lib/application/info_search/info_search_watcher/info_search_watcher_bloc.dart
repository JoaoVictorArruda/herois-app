// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';
// import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';
// import 'package:herois/domain/auth/i_auth_facade.dart';
// import 'package:herois/domain/core/errors.dart';
// import 'package:herois/domain/info/i_info_repository.dart';
// import 'package:herois/domain/info/info.dart';
// import 'package:herois/domain/info/info_failure.dart';
// import 'package:herois/injection.dart';
// import 'package:herois/infrastructure/core/firestore_helpers.dart';
//
// part 'info_search_watcher_event.dart';
//
// part 'info_search_watcher_state.dart';
//
// part 'info_search_watcher_bloc.freezed.dart';
//
// @injectable
// class InfoWatcherBloc extends Bloc<InfoWatcherEvent, InfoWatcherState> {
//   final IInfoRepository _infoRepository;
//
//   InfoWatcherBloc(this._infoRepository) : super(InfoWatcherState.initial());
//
//   StreamSubscription<Either<InfoFailure, KtList<Info>>> _infoSearchStreamSubscription;
//
//   @override
//   Stream<InfoWatcherState> mapEventToState(
//       InfoWatcherEvent event,
//       ) async* {
//     yield* event.map(
//       watchNearbyStarted: (e) async* {
//         final userDoc = await getIt<FirebaseFirestore>().userDocument();
//         final query = await userDoc.infoSearchFilterCollection.get();
//         final InfoFilter infoSearchFilter = InfoFilterDto.fromFirestore(query.docs[0]).toDomain();
//         yield const InfoWatcherState.loadInProgress();
//         await _infoSearchStreamSubscription?.cancel();
//         _infoSearchStreamSubscription = _infoRepository
//             .watchNearby(infoSearchFilter)
//             .listen((info) => add(InfoWatcherEvent.infoSearchReceived(info, infoSearchFilter)));
//       },
//       infoSearchReceived: (e) async* {
//         final userOption = await getIt<IAuthFacade>().getSignedInUser();
//         final user = userOption.getOrElse(() => throw NotAuthenticatedError());
//         yield e.failureOrInfo.fold(
//               (f) => InfoWatcherState.loadFailure(f),
//               (info) => InfoWatcherState.loadSuccess(info, user.id.getOrCrash(), e.infoSearchFilter),
//         );
//       },
//     );
//   }
//
//   @override
//   Future<void> close() async {
//     await _infoSearchStreamSubscription.cancel();
//     return super.close();
//   }
// }
