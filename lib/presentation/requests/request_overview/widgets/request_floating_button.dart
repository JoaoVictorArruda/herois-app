
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class RequestFloatingButton extends StatefulWidget {

  @override
  _RequestFloatingButtonState createState() => _RequestFloatingButtonState();
}

class _RequestFloatingButtonState extends State<RequestFloatingButton>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _buttonColor;
  Animation<double> _animateIcon;
  Animation<double> _translateButton;
  final Curve _curve = Curves.easeOut;
  final double _fabHeight = 56.0;

  @override
  void initState() {
    _animationController =
    AnimationController(vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.00,
        1.00,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget add() {
    return FloatingActionButton(
      heroTag: "requestadd",
      onPressed: () {
        ExtendedNavigator.of(context).pushRequestFormPage(editedRequest: null);
      },
      tooltip: 'Add',
      child: const Icon(Icons.add),
    );
  }

  Widget delete() {
    return FloatingActionButton(
      heroTag: "requestimage",
      onPressed: () {
        
      },
      tooltip: 'Image',
      child: const Icon(Icons.delete),
    );
  }

  Widget inbox() {
    return const FloatingActionButton(
      heroTag: "requestinbox",
      onPressed: null,
      tooltip: 'Inbox',
      child: Icon(Icons.inbox),
    );
  }

  Widget toggle() {
    return FloatingActionButton(
      heroTag: "requesttoggle",
      backgroundColor: _buttonColor.value,
      onPressed: animate,
      tooltip: 'Toggle',
      elevation: 0,
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: _animateIcon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
//        Transform(
//          transform: Matrix4.translationValues(
//            0.0,
//            _translateButton.value * 3.0,
//            0.0,
//          ),
//          child: add(),
//        ),
//        Transform(
//          transform: Matrix4.translationValues(
//            0.0,
//            _translateButton.value * 2.0,
//            0.0,
//          ),
//          child: (),
//        ),
//        Transform(
//          transform: Matrix4.translationValues(
//            0.0,
//            _translateButton.value,
//            0.0,
//          ),
//          child: delete(),
//        ),
        add(),
      ],
    );
  }
}