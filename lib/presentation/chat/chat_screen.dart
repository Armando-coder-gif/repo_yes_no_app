import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/26018/article_aligned%401x.jpg'),
        ),

        ),
        title: const Text('Alexandra Daddario'),
        centerTitle: false,
        ),
    );
  }
}
