import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/requests_search/request_search_filter_form/request_search_filter_form_bloc.dart';

class RangeSliderWidget extends StatelessWidget {
  const RangeSliderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RequestSearchFilterFormBloc, RequestSearchFilterFormState>(
      buildWhen: (p, c) => p.requestSearchFilter.distance != c.requestSearchFilter.distance,
      builder: (context, state) {
        final RangeValues rangeValues = RangeValues(0, double.parse(state.requestSearchFilter.distance.getOrCrash()));
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 8.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Distância",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  )
              ),
              RangeSlider(
                values: rangeValues,
                max: 100,
                divisions: 100,
                labels: RangeLabels(
                  rangeValues.start.round().toString(),
                  rangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  context
                    .bloc<RequestSearchFilterFormBloc>()
                    .add(RequestSearchFilterFormEvent.distanceChanged(values.end.toString()));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}