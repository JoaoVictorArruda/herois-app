import 'package:flutter/material.dart';

import '../../../domain/info/info_test.dart';
import 'widgets/info_card_test.dart';

class InfoOverViewPageTest extends StatelessWidget {

  final InfoTest infoTest;

  const InfoOverViewPageTest({Key key, this.infoTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoCardTest(infoTest: infoTest);
  }
}
