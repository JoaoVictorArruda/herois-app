import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';

class NameInputField extends HookWidget {
  const NameInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<InfoFormBloc, InfoFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.info.name.getOrCrash();
      },
      buildWhen: (p, c) => p.info.name != c.info.name,
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
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(1000.0),
                ),
              ),
            ),
            onChanged: (value) => context
                .bloc<InfoFormBloc>()
                .add(InfoFormEvent.nameChanged(value)),
            validator: (_) => context
                .bloc<InfoFormBloc>()
                .state
                .info
                .name
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => messages[CANNOT_BE_EMPTY],
                    exceedingLength: (f) => '${messages[EXCEEDING_LENGTH]}${f.max}',
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
