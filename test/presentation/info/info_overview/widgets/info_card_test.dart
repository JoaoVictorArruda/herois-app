import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/domain/info/info.dart';

import '../../../../domain/info/info_test.dart';

class InfoCardTest extends StatelessWidget {

  final InfoTest infoTest;

  const InfoCardTest({Key key, this.infoTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = InfoTest.fromTest(infoTest);
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 0,
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
                          decoration: TextDecoration.none
                      ),
                    )
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildStatColumn("Tipo Sanguineo", -1, info),
                            buildStatColumn("Requisições", info.totalRequests, info),
                          ],
                        ),
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
                  )
              ),
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
    );
  }

  Column buildStatColumn(String label, int number, Info info) {
    Widget marcador = Flexible(child: Text(
      number.toString(),
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    )
    );
    Widget texto = Text(
      label,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w400),
    );
    if (number < 0) {
      marcador = Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 40,
          height: 40,
          decoration: false
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
              Text(info.bloodType.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 20, color: Colors.white
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      marcador = Text(
        number.toString(),
        overflow: TextOverflow.ellipsis,
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
