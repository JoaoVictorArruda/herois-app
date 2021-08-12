import 'package:auto_route/auto_route.dart' hide BuildContext;
import 'package:flutter/material.dart';
import 'package:herois/presentation/routes/router.gr.dart';
import 'package:herois/presentation/sign_in/widgets/custom_curve_paint.dart';


class SystemPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [First(), Second(), Third()],
    );
  }
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: CurvePainterFirst(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            Image.asset(
              "assets/images/logo_first.png",
              width: 250,
            ),
            Container(),
            Container(),
            Container(),
            Column(
              children: [
                Text(
                  "Doe sangue \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  "O bem que você faz a alguém \n volta um dia para você também \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
              ],
            ),
            Container(),
            Image.asset("assets/images/point_first.png"),
          ],
        ),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: CurvePainterSecond(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            Image.asset(
              "assets/images/logo_second.png",
              width: 243,
            ),
            Container(),
            Container(),
            Container(),
            Column(
              children: [
                Text(
                  "Encontre doadores \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  "Ser doador é prolongar \n a vida de alguém, que o destino decretou. \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
              ],
            ),
            Container(),
            Image.asset("assets/images/point_second.png"),
          ],
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: CurvePainterThird(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(),
            Image.asset(
              "assets/images/logo_third.png",
              width: 250,
            ),
            Container(),
            Container(),
            Container(),
            Column(
              children: [
                Text(
                  "Mantenha-se atualizado \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  "Receba notificações\n quando precisarem de você. \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      fontFamily: 'Montserrat'),
                ),
              ],
            ),
            Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/point_third.png"),
                Container(
                  width: width / 5,
                ),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(18)),
                  ),
                  color: Colors.white,
                  child: Text(
                    'COMEÇAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                        fontFamily: 'Montserrat'),
                  ),
                  onPressed: () {
                    ExtendedNavigator.of(context).popUntilRoot();
                    ExtendedNavigator.of(context).replace(Routes.signInPage);
                  },
                  borderSide: BorderSide(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}