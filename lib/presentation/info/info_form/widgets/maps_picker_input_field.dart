import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:herois/application/info/info_form/info_form_bloc.dart';
import 'package:herois/domain/core/messages.dart';
import 'package:herois/domain/core/secrets.dart';

class MapsPickerInputField extends HookWidget {
  const MapsPickerInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    PickResult selectedPlace;
    LatLng kInitialPosition;
    Geolocator.getCurrentPosition().then((Position position) {
      kInitialPosition = LatLng(position.latitude, position.longitude);
    }).catchError((e) {
      kInitialPosition = LatLng(-33.8567844, 151.213108);
    });
    String city;
    String lat;
    String long;

    return BlocConsumer<InfoFormBloc, InfoFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {},
      buildWhen: (p, c) => p.info.city != c.info.city,
      builder: (context, state) {
        if (state.isEditing) {
          textEditingController.text = state.info.city.getOrCrash();
        }
        textEditingController.addListener(() {
          context
              .bloc<InfoFormBloc>()
              .add(InfoFormEvent.localizationChanged(city, lat, long));
        });
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  enableInteractiveSelection: false,
                  focusNode: AlwaysDisabledFocusNode(),
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    labelText: "Cidade",
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
                      .bloc<InfoFormBloc>()
                      .add(InfoFormEvent.localizationChanged(city, lat, long)),
                  validator: (_) =>
                      context.bloc<InfoFormBloc>().state.info.city.value.fold(
                            (f) => f.maybeMap(
                              empty: (f) => messages[CANNOT_BE_EMPTY],
                              exceedingLength: (f) =>
                                  '${messages[EXCEEDING_LENGTH]}${f.max}',
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
                            apiKey: MAPS_API_KEY,
                            initialPosition: kInitialPosition,
                            useCurrentLocation: false,
                            usePlaceDetailSearch: true,
                            autocompleteLanguage: 'BR',
                            onPlacePicked: (result) {
                              selectedPlace = result;
                              for (final component
                                  in selectedPlace.addressComponents) {
                                if (component.types[0] ==
                                    'administrative_area_level_2') {
                                  textEditingController.text =
                                      component.longName;
                                }
                              }
                              city = textEditingController.text;
                              lat = selectedPlace.geometry.location.lat
                                  .toString();
                              long = selectedPlace.geometry.location.lng
                                  .toString();
                              textEditingController.notifyListeners();
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      ),
                    );
                  },
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
