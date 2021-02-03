import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';

import 'package:herois/domain/info/value_objects.dart';

class BioField extends HookWidget {
  const BioField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<InfoFormBloc, InfoFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        // In case of an initial data failure... We can't get to this point though.
        textEditingController.text = state.info.bio.getOrCrash();
      },
      buildWhen: (p, c) => p.info.bio != c.info.bio,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Bio',
              counterText: '',
              filled: true,
              fillColor: Color.fromARGB(255, 239, 239, 239),
            ),
            maxLength: InfoBio.maxLength,
            maxLines: 5,
            minLines: 5,
            onChanged: (value) => context
                .bloc<InfoFormBloc>()
                .add(InfoFormEvent.bioChanged(value)),
            validator: (_) => context
                .bloc<InfoFormBloc>()
                .state
                .info
                .bio
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
