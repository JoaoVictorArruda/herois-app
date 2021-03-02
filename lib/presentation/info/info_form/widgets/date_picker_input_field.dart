import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';

class DatePickerInputField extends HookWidget {
  const DatePickerInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<InfoFormBloc, InfoFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {},
      buildWhen: (p, c) => p.info.dateLastDonate != c.info.dateLastDonate,
      builder: (context, state) {
        DateTime dateTime;
        if (state.info.dateLastDonate.getOrCrash() == "null") {
          textEditingController.text = "";
        } else if (state.info.dateLastDonate.getOrCrash() != "") {
          dateTime = DateTime.parse(state.info.dateLastDonate.getOrCrash());
          textEditingController.text = dateTime.day.toString().padLeft(2, '0') +
              '/' +
              dateTime.month.toString().padLeft(2, '0') +
              '/' +
              dateTime.year.toString();
        } else {
          dateTime = DateTime.now();
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  enableInteractiveSelection: false,
                  focusNode: AlwaysDisabledFocusNode(),
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    labelText: "Última doação",
                    filled: true,
                    fillColor: Color.fromARGB(255, 239, 239, 239),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(1000.0),
                      ),
                    ),
                  ),
                  validator: (_) => context
                      .bloc<InfoFormBloc>()
                      .state
                      .info
                      .dateLastDonate
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (f) => messages[CANNOT_BE_EMPTY],
                          exceedingLength: (f) =>
                              '${messages[EXCEEDING_LENGTH]}${f.max}',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                  onTap: () async {
                    final DateTime picked = await showDatePicker(
                        context: context,
                        initialDate: dateTime ?? DateTime.now(),
                        firstDate: DateTime(1999),
                        lastDate: DateTime(DateTime.now().year + 1));
                    if (picked != null) {
                      context.bloc<InfoFormBloc>().add(
                          InfoFormEvent.dateLastDonateChange(
                              picked.toIso8601String()));
                    }
                  },
                ),
              ),
              // selectedPlace == null ? Container() : Text(selectedPlace.formattedAddress ?? ""),
            ],
          ),
        );
      },
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
