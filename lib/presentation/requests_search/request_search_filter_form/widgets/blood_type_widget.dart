import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herois/application/requests_search/request_search_filter_form/request_search_filter_form_bloc.dart';
import 'package:herois/domain/info/value_objects.dart';

class BloodTypeWidget extends StatelessWidget {
  const BloodTypeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration clicked = BoxDecoration(
      border: Border.all(width: 0.9),
      shape: BoxShape.circle,
      color: const Color(0xffff3257),
//      borderRadius: BorderRadius.all(Radius.elliptical(20.5, 20.5)),
//      gradient: LinearGradient(
//        begin: Alignment(-1.05, -1.0),
//        end: Alignment(0.64, 0.79),
//        colors: [Color(0xffff217a), Color(0xffff4d4d)],
//        stops: [0.0, 1.0],
//      ),
    );
    BoxDecoration notClicked = BoxDecoration(
      border: Border.all(width: 0.9),
      shape: BoxShape.circle,
      color: const Color(0xffffffff),
    );
    return BlocBuilder<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
      buildWhen: (p, c) => p.requestSearchFilter.bloodType != c.requestSearchFilter.bloodType,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(
            width: 40,
            height: 40,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: BloodType.predefinedBloodTypes.length,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
              },
              itemBuilder: (context, index) {
                final itemDescription = BloodType.predefinedBloodTypes[index];
                return GestureDetector(
                  onTap: () {
                    context
                        .bloc<RequestSearchFilterFormBloc>()
                        .add(RequestSearchFilterFormEvent.bloodTypeChanged(itemDescription));
                  },
                  child: Container(
                    width: 40,
                    decoration: state.requestSearchFilter.bloodType.value.fold(
                      (_) => notClicked,
                      (bloodType) =>
                         bloodType.toLowerCase().contains('|${itemDescription.toLowerCase()}|') ? clicked : notClicked,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(itemDescription),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
