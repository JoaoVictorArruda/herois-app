import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests_search/request_search_filter_form/request_search_filter_form_bloc.dart';


class OnlyCompatiblesInput extends StatelessWidget {
  const OnlyCompatiblesInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CheckboxListTile(
            title: const Text("Apenas compativeis"),
            value: true,
            onChanged: (newValue) {
              context.bloc<RequestSearchFilterFormBloc>() .add(RequestSearchFilterFormEvent.onlyCompatibleClicked());
            },
            controlAffinity: ListTileControlAffinity.leading,
          );
        });
  }
}