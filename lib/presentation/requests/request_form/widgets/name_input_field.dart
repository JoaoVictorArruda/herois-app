import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/requests/request_form/request_form_bloc.dart';

class NameInputField extends HookWidget {
  const NameInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<RequestFormBloc, RequestFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.request.name.getOrCrash();
      },
      buildWhen: (p, c) => p.request.name != c.request.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Nome',
              counterText: '',
              filled: true,
              fillColor: Color.fromARGB(255, 239, 239, 239),
            ),
            onChanged: (value) => context
                .bloc<RequestFormBloc>()
                .add(RequestFormEvent.nameChanged(value)),
            validator: (_) => context
                .bloc<RequestFormBloc>()
                .state
                .request
                .name
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
          ),
        );
      },
    );
  }
}
