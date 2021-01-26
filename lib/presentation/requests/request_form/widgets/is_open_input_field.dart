import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests/request_form/request_form_bloc.dart';


class IsOpenInputField extends StatelessWidget {
  const IsOpenInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestFormBloc, RequestFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {},
        buildWhen: (p, c) => p.request.isOpen != c.request.isOpen,
        builder: (context, state) {
          return CheckboxListTile(
            title: const Text("Estou disponivel para salvar vidas"),
            value: state.request.isOpen,
            onChanged: (newValue) {
              context.bloc<RequestFormBloc>() .add(RequestFormEvent.isOpenChanged(!state.request.isOpen));
            },
            controlAffinity: ListTileControlAffinity.leading,
          );
        });
  }
}