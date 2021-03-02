import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herois/presentation/contact/contact_overview/contact_overview_page.dart';
import 'package:herois/presentation/info/info_overview/info_overview_page.dart';
import 'package:herois/presentation/info/info_search_overview/info_search_overview_page.dart';
import 'package:herois/presentation/learning/learning_overview/learning_overview_page.dart';
import 'package:herois/presentation/requests_search/request_search_overview/request_search_overview_page.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  final int index;

  const HomeBottomNavigationBar({Key key, this.index}) : super(key: key);

  @override
  _HomeBottomNavigationBarState createState() =>
      _HomeBottomNavigationBarState(index);
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  int index;

  _HomeBottomNavigationBarState(this.index);

  @override
  Widget build(BuildContext context) {
//    final infoActorBloc = context.bloc<InfoActorBloc>();
    return CupertinoTabBar(
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline,
                color: (index == 0) ? Colors.red : Colors.grey),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.search,
                color: (index == 1) ? Colors.red : Colors.grey),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color: (index == 2) ? Colors.red : Colors.grey),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: (index == 3) ? Colors.red : Colors.grey),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.note,
                color: (index == 4) ? Colors.red : Colors.grey),
            backgroundColor: Colors.white),
      ],
      currentIndex: index,
      onTap: navigationTapped,
    );
  }

  void navigationTapped(int page) {
    if (index == page) {
      return;
    }
    setState(() {
      index = page;
    });
    switch (page) {
      case 0:
        // Router.navigator.pushNamed(Router.infoOverviewPage);
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                ContactOverviewPage(),
            transitionDuration: const Duration(),
          ),
        );
        break;
      case 1:
        // Router.navigator.pushNamed(Router.infoOverviewPage);
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                InfoSearchOverviewPage(),
            transitionDuration: const Duration(),
          ),
        );
        break;
      case 2:
        // Router.navigator.pushNamed(Router.requestOverviewPage);gt
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                RequestSearchOverviewPage(),
            transitionDuration: const Duration(),
          ),
        );
        break;
      case 3:
        // Router.navigator.pushNamed(Router.infoOverviewPage);
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                InfoOverviewPage(),
            transitionDuration: const Duration(),
          ),
        );
        break;
      case 4:
        // ExtendedNavigator.of(context).replace(Routes.notesOverviewPage);
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                LearningOverviewPage(),
            transitionDuration: const Duration(),
          ),
        );
        // Router.navigator.pushNamed(Router.notesOverviewPage);
        break;
      default:
        throw Exception("Invalid page");
    }
  }
}
