import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/info/info_actor/info_actor_bloc.dart';
import 'package:herois/domain/contact/contact.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/messages/message.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class OtherInfoCard extends StatelessWidget {

  final String userId;

  const OtherInfoCard({
    Key key,
    @required this.info, this.userId,
  }) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    final infoActorBloc = context.bloc<InfoActorBloc>();
    if (info == null) {
      return Center(
        child: Column(
          children: [
            const Text(
              "\n\n\n\n\nPerfil não encontrado",
              overflow: TextOverflow.clip,
            ),
            FlatButton(
              color: Colors.red,
              onPressed: () {
                ExtendedNavigator.of(context).pushInfoFormPage(editedInfo: info);
              },
              child: const Text("Criar"),
            ),
          ],
        ),
      );
    }
    String photoUrl = info.photoUrl;
    if(photoUrl == "") {
      photoUrl = "http://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png";
    }
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 0,
      child: BlocProvider.value(
        value: infoActorBloc,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                    info.name.getOrCrash(),
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    )
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(photoUrl),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildStatColumn("Tipo Sanguineo", -1),
                            buildStatColumn("Requisições", info.totalRequests),
                          ],
                        ),
                        OtherInfoActionOverviewBody(info: info, userId: userId,)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          info.city.getOrCrash(),
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 1.0),
                child: Text(info.bio.getOrCrash(),style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.black38,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildStatColumn(String label, int number) {
    Widget marcador = Text(
      number.toString(),
      style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    );
    Widget texto = Text(
      label,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.w400),
    );
    if (number < 0) {
      marcador = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: !true
              ? BoxDecoration(
            border: Border.all(width: 0.9),
            shape: BoxShape.circle,
            color: const Color(0xffffffff),
          )
              : const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(20.5, 20.5)),
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
              Text(info.bloodType.getOrCrash()
                ,style: const TextStyle(
                    fontSize: 20, color: Colors.white
                ),),
            ],
          ),
        ),
      );
    } else {
      marcador = Text(
        number.toString(),
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.redAccent,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        marcador,
        Container(
            margin: const EdgeInsets.only(top: 4.0),
            child: texto
        )
      ],
    );
  }
}

class OtherInfoActionOverviewBody extends StatelessWidget {
  const OtherInfoActionOverviewBody({
    @required this.info, this.userId,
  });

  final Info info;
  final String userId;

  @override
  Widget build(BuildContext context) {
    // Request request;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        OutlineButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              ExtendedNavigator.of(context).pushMessageOverviewPage(contact: Contact(userId: StringSingleLine(userId), lastMessage: StringSingleLine(""), photoUrl: info.photoUrl, name: info.name.getOrCrash()));
            },
            child: Text(
              "ENVIAR MENSAGEM",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            )
        ),
      ],
    );
  }
}
