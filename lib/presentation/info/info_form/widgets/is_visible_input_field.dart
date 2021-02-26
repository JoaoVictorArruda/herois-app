import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';


class IsVisibleInputField extends StatelessWidget {
  const IsVisibleInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InfoFormBloc, InfoFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {},
        buildWhen: (p, c) => p.info.isVisible != c.info.isVisible,
        builder: (context, state) {
          return CheckboxListTile(
            title: const Text("Quero receber notificações de pessoas que precisam do meu sangue."),
            value: state.info.isVisible ?? false,
            onChanged: (newValue) {
              context.bloc<InfoFormBloc>() .add(InfoFormEvent.isVisibleChanged(newValue));
            },
            controlAffinity: ListTileControlAffinity.leading,
          );
        });
  }
}