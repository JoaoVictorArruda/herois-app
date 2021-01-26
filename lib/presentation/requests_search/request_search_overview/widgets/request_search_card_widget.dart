import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herois/domain/requests_search/request_search.dart';
import 'package:herois/presentation/routes/router.gr.dart';

class RequestSearchCard extends StatelessWidget {
  const RequestSearchCard({
    Key key,
    @required this.request,
  }) : super(key: key);

  final RequestSearch request;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).pushOtherInfoOverviewPage(userId: request.user.getOrCrash());
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: Colors.white,
        elevation: 0,
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
        ),
      ),
    );
  }
}