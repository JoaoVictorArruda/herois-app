import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:herois/application/requests/request_form/request_form_bloc.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPickerInputField extends HookWidget {
  const MapsPickerInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    PickResult selectedPlace;
    LatLng kInitialPosition;
    Geolocator
        .getCurrentPosition()
        .then((Position position) {
      kInitialPosition = LatLng(position.latitude, position.longitude);
    }).catchError((e) {
      kInitialPosition = LatLng(-33.8567844, 151.213108);
    });
    String city;
    String lat;
    String long;

    return BlocConsumer<RequestFormBloc, RequestFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
      },
      buildWhen: (p, c) => p.request.city != c.request.city,
      builder: (context, state) {
        if(state.isEditing) {
          textEditingController.text = state.request.city.getOrCrash();
        }
        textEditingController.addListener(() {
          context
              .bloc<RequestFormBloc>()
              .add(RequestFormEvent.localizationChanged(city, lat, long));
        });
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Text(
                            "Cidade de preferência",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            )
                        ),
                      ),
                      TextFormField(
                        enableInteractiveSelection: false,
                        focusNode: AlwaysDisabledFocusNode(),
                        controller: textEditingController,
                        decoration: const InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 20.0),
                          hintText: "Cidade",
                          filled: true,
                          fillColor: Color.fromARGB(255, 239, 239, 239),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(1000.0),
                            ),
                          ),
                        ),
                        onChanged: (value) => context
                            .bloc<RequestFormBloc>()
                            .add(RequestFormEvent.localizationChanged(city, lat, long)),
                        validator: (_) => context
                            .bloc<RequestFormBloc>()
                            .state
                            .request
                            .city
                            .value
                            .fold(
                              (f) => f.maybeMap(
                            empty: (f) => 'Cannot be empty',
                            exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                            orElse: () => null,
                          ),
                              (_) => null,
                      ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return PlacePicker(
                                  region: 'BR',
                                  searchingText: 'Selecionar aqui',
                                  apiKey: 'AIzaSyCSENeoE2SBLQvH5SyRKk_ytq9NJps8AEk',
                                  initialPosition: kInitialPosition,
                                  useCurrentLocation: false,
                                  usePlaceDetailSearch: true,
                                  autocompleteLanguage: 'BR',
                                  onPlacePicked: (result) {
                                    selectedPlace = result;
                                    for(final component in selectedPlace.addressComponents) {
                                      if(component.types[0] == 'administrative_area_level_2') {
                                        textEditingController.text = component.longName;
                                      }
                                    }
                                    city = textEditingController.text;
                                    lat = selectedPlace.geometry.location.lat.toString();
                                    long = selectedPlace.geometry.location.lng.toString();
                                    textEditingController.notifyListeners();
                                    Navigator.of(context).pop();
                                  },
                                );
                              },
                            ),
                          );
                        },
              ),
                    ],
                  ),
                ),
              // selectedPlace == null ? Container() : Text(selectedPlace.formattedAddress ?? ""),
            ],
          ),
        );
      },
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
