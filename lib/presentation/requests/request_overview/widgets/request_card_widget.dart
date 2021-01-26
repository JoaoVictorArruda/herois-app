import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests/request_actor/request_actor_bloc.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    Key key,
    @required this.request,
  }) : super(key: key);

  final Request request;

  @override
  Widget build(BuildContext context) {
    final requestActorBloc = context.bloc<RequestActorBloc>();
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushRequestFormPage(editedRequest: request);
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider.value(
              value: requestActorBloc,
              child: AlertDialog(
                title: const Text('Requisição selecionada: '),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.person),
                                      Text(": ${request.name.getOrCrash()}", style: const TextStyle(fontSize: 18)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.location_on),
                                      Text(": ${request.city.getOrCrash()}", overflow: TextOverflow.ellipsis ,style: const TextStyle(fontSize: 18)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: !true
                                  ? BoxDecoration(
                                border: Border.all(width: 0.9),
                                shape: BoxShape.circle,
                                color: const Color(0xffffffff),
                              )
                                  : const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.elliptical(40, 40)),
                                gradient: LinearGradient(
                                  begin: Alignment(-1.05, -1.0),
                                  end: Alignment(0.64, 0.79),
                                  colors: [Color(0xffff217a), Color(0xffff4d4d)],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(request.bloodType.getOrCrash(),
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.white),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                  FlatButton(
                    onPressed: () {
                      requestActorBloc.add(RequestActorEvent.deleted(request));
                      Navigator.pop(context);
                    },
                    child: const Text('Deletar'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        elevation: 0,
        child: BlocProvider.value(
            value: requestActorBloc,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                            const Icon(Icons.person),
                              Text(": ${request.name.getOrCrash()}", style: const TextStyle(fontSize: 18)),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              Text(": ${request.city.getOrCrash()}", overflow: TextOverflow.ellipsis ,style: const TextStyle(fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: !true
                          ? BoxDecoration(
                        border: Border.all(width: 0.9),
                        shape: BoxShape.circle,
                        color: const Color(0xffffffff),
                      )
                          : const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.elliptical(40, 40)),
                        gradient: LinearGradient(
                          begin: Alignment(-1.05, -1.0),
                          end: Alignment(0.64, 0.79),
                          colors: [Color(0xffff217a), Color(0xffff4d4d)],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(request.bloodType.getOrCrash(),
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class RequestActionOverviewBody extends StatelessWidget {
  const RequestActionOverviewBody({
    @required this.request,
  });

  final Request request;

  @override
  Widget build(BuildContext context) {
    final requestActorBloc = context.bloc<RequestActorBloc>();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.create),
            onPressed: () {
              ExtendedNavigator.of(context).pushRequestFormPage(editedRequest: request);
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              requestActorBloc.add(RequestActorEvent.deleted(request));
            },
          ),
        ],
      ),
    );
  }
}
