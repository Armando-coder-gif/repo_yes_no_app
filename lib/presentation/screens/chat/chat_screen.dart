import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/images/mi_princesa.jpg'),
        ),

        ),
        title: const Text('Mi Princesa'),
        centerTitle: false,
        ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea( //? SafeArea permite dejar los botones si el celular los trae
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100, //* solo va a tener 100 elementos
                itemBuilder: (context, index){ //? el index me indica cual es el elemento que se esta renderizando en este momento
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                }
              )
            ),

            const Text('mundo')
          ],

        ),
      ),
    );
  }
}
