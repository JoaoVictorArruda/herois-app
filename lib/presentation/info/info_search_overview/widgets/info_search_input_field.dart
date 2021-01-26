import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/info/info_watcher/info_watcher_bloc.dart';

class InfoSearchInputField extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        decoration: const InputDecoration(
          labelText: 'Buscar',
          counterText: '',
          filled: true,
          fillColor: Color.fromARGB(255, 239, 239, 239),
        ),
        onChanged: (value) => context
            .bloc<InfoWatcherBloc>()
            .add(InfoWatcherEvent.watchInfoSearchFiltered(textEditingController.text)),
      ),
    );
  }
}
