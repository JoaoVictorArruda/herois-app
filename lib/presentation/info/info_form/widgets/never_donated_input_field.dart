import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';


class NeverDonatedInputField extends StatelessWidget {
  const NeverDonatedInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InfoFormBloc, InfoFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {},
        buildWhen: (p, c) => p.info.neverDonated != c.info.neverDonated,
        builder: (context, state) {
          return CheckboxListTile(
            title: const Text("Nunca doei"),
            value: state.info.neverDonated ?? false,
            onChanged: (newValue) {
              context.bloc<InfoFormBloc>() .add(InfoFormEvent.neverDonatedChange(newValue));
            },
            controlAffinity: ListTileControlAffinity.leading,
          );
        });
  }
}