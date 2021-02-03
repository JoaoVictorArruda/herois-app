import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/injection.dart';
import 'package:herois/application/requests_search/request_search_filter_form/request_search_filter_form_bloc.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';
import 'package:herois/presentation/core/saving_progress_overlay.dart';
import 'package:herois/presentation/requests_search/request_search_filter_form/widgets/blood_type_widget.dart';
import 'package:herois/presentation/requests_search/request_search_filter_form/widgets/maps_picker_input_field.dart';
import 'package:herois/presentation/requests_search/request_search_filter_form/widgets/only_compatibles_checkbox_input.dart';
import 'package:herois/presentation/requests_search/request_search_filter_form/widgets/range_slider_input.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class RequestSearchFilterFormPage extends StatelessWidget {
  final RequestSearchFilter editedRequestSearchFilter;

  const RequestSearchFilterFormPage({
    Key key,
    @required this.editedRequestSearchFilter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RequestSearchFilterFormBloc>(
          create: (context) => getIt<RequestSearchFilterFormBloc>()
            ..add(RequestSearchFilterFormEvent.initialized(optionOf(editedRequestSearchFilter))),
        ),
      ],
      child: BlocConsumer<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
        listenWhen: (p, c) =>
        p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
                () {},
                (either) {
              either.fold(
                    (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                      // Use localized strings here in your apps
                        insufficientPermission: (_) =>
                        'Insufficient permissions ❌',
                        unableToUpdate: (_) =>
                        "Couldn't update the note. Was it deleted from another device?",
                        unexpected: (_) =>
                        'Unexpected error occured, please contact support.'),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).pushRequestSearchOverviewPage();
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const RequestSearchFilterFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class RequestSearchFilterFormPageScaffold extends StatelessWidget {

  const RequestSearchFilterFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: BlocBuilder<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) => Text(
              state.isEditing ? 'Filtrar Requisição' : 'Filtrar Requisição',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.check),
                  color: Colors.black,
                  onPressed: () {
                    context
                        .bloc<RequestSearchFilterFormBloc>()
                        .add(const RequestSearchFilterFormEvent.saved());
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: const CustomScrollView(
                slivers: <Widget>[
                   SliverToBoxAdapter(child: RangeSliderWidget()),
                   SliverToBoxAdapter(child: BloodTypeWidget()),
                   SliverToBoxAdapter(child: OnlyCompatiblesInput()),
                   SliverToBoxAdapter(child: MapsPickerInputField()),
                ],
              ),
            );
          },
        )
    );
  }
}
