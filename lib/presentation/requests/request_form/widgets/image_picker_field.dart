import 'dart:io' as io;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/requests/request_form/request_form_bloc.dart';
import 'package:herois/domain/auth/i_auth_facade.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:herois/domain/core/errors.dart';
import 'package:herois/injection.dart';

class ImagePickerField extends HookWidget {
  const ImagePickerField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    final picker = ImagePicker();
    return BlocConsumer<RequestFormBloc, RequestFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          textEditingController.text = state.request.photoUrl;
        },
        buildWhen: (p, c) => p.request.photoUrl != c.request.photoUrl,
        builder: (context, state) {
          return Column(
            children: <Widget>[
               Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  backgroundImage: NetworkImage(state.request.photoUrl),
                  onBackgroundImageError: (a,b){},
                  radius: 50.0,
                ),
              ),
              FlatButton(
                  onPressed: () {
                    _selectImage(context, picker, state);

                  },
                  child: const Text(
                    "Trocar foto",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          );
        });
  }

  _selectImage(BuildContext parentContext, ImagePicker picker, RequestFormState state) async {
    return showDialog<dynamic>(
      context: parentContext,
      barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Selecione uma opção'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () async {
                final pickedFile =
                    await picker.getImage(source: ImageSource.camera);
                if (pickedFile != null) {
                  _uploadImage(parentContext, pickedFile, state);
                }
              },
              child: const Text('Tire uma foto'),
            ),
            SimpleDialogOption(
              onPressed: () async {
                final pickedFile =
                    await picker.getImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  _uploadImage(parentContext, pickedFile, state);
                }
              },
              child: const Text('Escolha da galeria'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancelar"),
            )
          ],
        );
      },
    );
  }

  void _uploadImage(BuildContext parentContext, PickedFile pickedFile, RequestFormState state) async {
    if (pickedFile == null) {
      Scaffold.of(parentContext)
          .showSnackBar(const SnackBar(content: Text("Nenhum arquivo foi selecionado")));
      return null;
    }
    Scaffold.of(parentContext)
        .showSnackBar(const SnackBar(content: Text("Salvando, aguarde um momento")));

    firebase_storage.UploadTask uploadTask;

    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child(user.id.getOrCrash())
        .child('/${state.request.id.getOrCrash()}.jpg');

    final metadata = firebase_storage.SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'picked-file-path': pickedFile.path});

    if (kIsWeb) {
      uploadTask = ref.putData(await pickedFile.readAsBytes(), metadata);
    } else {
      uploadTask = ref.putFile(io.File(pickedFile.path), metadata);
    }
    final url = await ref.getDownloadURL();
    parentContext.bloc<RequestFormBloc>() .add(RequestFormEvent.photoUrlChanged(url.toString()));
    io.sleep(const Duration(seconds: 2));
    Navigator.pop(parentContext);
    Scaffold.of(parentContext).hideCurrentSnackBar();
  }
}
