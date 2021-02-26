import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/info/info_actor/info_actor_bloc.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class InfoSearchCard extends StatelessWidget {

  final String userId;

  const InfoSearchCard({
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
            Text(
              "\n\n\n\n\n\n\nPerfil não encontrado",
              overflow: TextOverflow.clip,
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
              Row(
                children: <Widget>[
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(photoUrl),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            info.name.getOrCrash().length > 15
                                ? info.name.getOrCrash().substring(0, 15).trim() + '...'
                                : info.name.getOrCrash(),
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none),
                            )
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, color: Colors.black38, size: 14,),
                            Text(
                              info.city.getOrCrash(),
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlineButton(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                                  onPressed: () {
                                    ExtendedNavigator.of(context).pushOtherInfoOverviewPage(userId: info.id.getOrCrash(), index: 1);
                                  },
                                  child: Text(
                                    "      VER PERFIL      ",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              ),
                              buildStatColumn(-1),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStatColumn(int number) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: true
              ? BoxDecoration(
            border: Border.all(width: 0.9, color: Colors.black38),
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
                    fontSize: 20, color: Colors.redAccent
                ),
              ),
            ],
          ),
        ),
      );
  }
}
