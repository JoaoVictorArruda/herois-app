import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/requests/request_actor/request_actor_bloc.dart';
import 'package:herois/domain/requests/request.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class OtherRequestCard extends StatelessWidget {
  const OtherRequestCard({
    Key key,
    @required this.request,
  }) : super(key: key);

  final Request request;

  @override
  Widget build(BuildContext context) {
    final requestActorBloc = context.bloc<RequestActorBloc>();
    String photoUrl = request.photoUrl;
    if(photoUrl == "") {
      photoUrl = "https://www.flaticon.com/br/premium-icon/icons/svg/1466/1466153.svg";
    }
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 0,
      child: BlocProvider.value(
        value: requestActorBloc,
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
                        Row(
                          children: [
                            // CheckboxListTile(value: true, onChanged: null),
                            Text(
                                request.name.getOrCrash(),
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, color: Colors.black38, size: 14,),
                            Text(
                              request.city.getOrCrash(),
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
                                  onPressed: null,
                                  child: Text(
                                    "       ${request.isOpen ? "ABERTO" : 'FINALIZADO'}      ",
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
            Text(request.bloodType.getOrCrash(),
              style: const TextStyle(
                  fontSize: 20, color: Colors.redAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}
