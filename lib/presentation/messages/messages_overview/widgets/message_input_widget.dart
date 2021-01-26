import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:herois/application/message/message_form/message_form_bloc.dart';

class MessageInputField extends HookWidget {

  final String userId;

  const MessageInputField(this.userId, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocConsumer<MessageFormBloc, MessageFormState>(
      listenWhen: (p, c) => true,
      listener: (context, state) {
        if(state.isEditing) {
          textEditingController.text = state.message.text.getOrCrash();
        }
      },
      buildWhen: (p, c) => p.message.text != c.message.text,
      builder: (context, state) {
        return Container(
          width: double.infinity,
          height: 50.0,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffE8E8E8), width: 0.5)),
              color: Colors.white),
          child: Row(
            children: <Widget>[
              // Edit text
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.black, fontSize: 15.0),
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Digite sua mensagem',
                      counterText: '',
                      // filled: true,
                      // fillColor: Color.fromARGB(255, 239, 239, 239),
                    ),
                    onChanged: (value) => context
                        .bloc<MessageFormBloc>()
                        .add(MessageFormEvent.textChanged(textEditingController.text)),
                    onSubmitted: (text) {
                      context
                          .bloc<MessageFormBloc>()
                          .add(MessageFormEvent.saved(userId));
                      textEditingController.clear();
                    },
                  ),
                ),
              ),

              // Button send message
              Material(
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                        context
                            .bloc<MessageFormBloc>()
                            .add(MessageFormEvent.saved(userId));
                      textEditingController.clear();
                    },
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
