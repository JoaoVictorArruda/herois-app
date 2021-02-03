import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/requests/request_form/request_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  "Para",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    )
                ),
              ),
              TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20.0),
                  hintText: 'Amigo',
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
                        empty: (f) => messages[CANNOT_BE_EMPTY],
                        exceedingLength: (f) => '${messages[EXCEEDING_LENGTH]}${f.max}',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
