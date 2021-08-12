import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/presentation/core/saving_progress_overlay.dart';
import 'package:herois/presentation/info/info_form/widgets/bio_field_widget.dart';
import 'package:herois/presentation/info/info_form/widgets/blood_type_widget.dart';
import 'package:herois/presentation/info/info_form/widgets/date_picker_input_field.dart';
import 'package:herois/presentation/info/info_form/widgets/gender_widget.dart';
import 'package:herois/presentation/info/info_form/widgets/image_picker_field.dart';
import 'package:herois/presentation/info/info_form/widgets/is_visible_input_field.dart';
import 'package:herois/presentation/info/info_form/widgets/maps_picker_input_field.dart';
import 'package:herois/presentation/info/info_form/widgets/name_input_field.dart';
import 'package:herois/presentation/info/info_form/widgets/never_donated_input_field.dart';
import 'package:herois/presentation/routes/router.gr.dart';

import 'package:herois/injection.dart';

class InfoFormPage extends HookWidget {
  final Info editedInfo;

  const InfoFormPage({
    Key key,
    @required this.editedInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InfoFormBloc>()
        ..add(InfoFormEvent.initialized(optionOf(editedInfo))),
      child: BlocConsumer<InfoFormBloc, InfoFormState>(
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
                        insufficientPermissions: (_) =>
                          messages[INSUFFICIENT_PERMISSIONS],
                        unableToUpdate: (_) =>
                          messages[UNABLE_TO_UPDATE],
                        unexpected: (_) =>
                          messages[UNEXPECTED],
                        unavailableToDonate: (_) => messages[UNAVAILABLE_TO_DONATE]
                    ),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).pushInfoOverviewPage();
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const InfoFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class InfoFormPageScaffold extends StatelessWidget {
  const InfoFormPageScaffold({
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
          title: BlocBuilder<InfoFormBloc, InfoFormState>(
            buildWhen: (p, c) => p.isEditing != c.isEditing,
            builder: (context, state) => Text(
              state.isEditing ? 'Editar perfil' : 'Seja um herói',
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
                        .bloc<InfoFormBloc>()
                        .add(const InfoFormEvent.saved());
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<InfoFormBloc, InfoFormState>(
          buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: CustomScrollView(
                slivers: <Widget>[
                  const SliverToBoxAdapter(child: ImagePickerField()),
                   SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                        child: Text(
                            "Gênero",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            )
                        ),
                      ),
                  ),
                  SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[const GenderWidget()],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, left: 12),
                      child: Text(
                          "Tipo Sanguíneo",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          )
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(child: BloodTypeWidget()),
                  const SliverToBoxAdapter(child: NameInputField()),
                  const SliverToBoxAdapter(child: MapsPickerInputField()),
                  const SliverToBoxAdapter(child: DatePickerInputField()),
                  const SliverToBoxAdapter(child: NeverDonatedInputField()),
                  const SliverToBoxAdapter(child: BioField()),
                  const SliverToBoxAdapter(child: IsVisibleInputField()),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RaisedButton(
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          context
                              .bloc<InfoFormBloc>()
                              .add(const InfoFormEvent.saved());
                        },
                        child: Text(
                            "CONFIRMAR",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
