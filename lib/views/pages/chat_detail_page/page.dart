import 'package:flutter/material.dart';

import 'body.dart';
import 'message_input.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Chat Detail'),
      ),
      body: BodySection(),
    );
  }
}
