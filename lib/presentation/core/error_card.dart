import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herois/domain/core/failures.dart';

class ErrorCard extends StatelessWidget {

  final Option<ValueFailure<dynamic>> errorObject;

  const ErrorCard({
    Key key, this.errorObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Erro inesperado, contate o suporte',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Detalhes:',
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              errorObject.fold(() => '', (f) => f.toString()),
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}