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
      child: FocusScope(
        onFocusChange: (value) => context
            .bloc<InfoWatcherBloc>()
            .add(InfoWatcherEvent.watchInfoSearchFiltered(textEditingController.text)),
        child: Container(
          height: 40.0,
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              contentPadding: const EdgeInsets.only(top: 4.0, left: 20.0),
              hintText: 'Pesquisar usuários',
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
                .bloc<InfoWatcherBloc>()
                .add(InfoWatcherEvent.watchInfoSearchFiltered(textEditingController.text)),
            onFieldSubmitted: (value) => context
                .bloc<InfoWatcherBloc>()
                .add(InfoWatcherEvent.watchInfoSearchFiltered(textEditingController.text)),
          ),
        ),
      ),
    );
  }
}
