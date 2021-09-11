import 'package:chat_0818/plugins/web_socket_channel.dart';
import 'package:flutter/material.dart';

import 'message_input.dart';

class BodySection extends StatefulWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  _BodySectionState createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Text('Message, list')),
        MessageInput(),
      ],
    );
  }

  // 发送消息
  sendMessage() {
    WebSocketPlugin.send('hello world');
  }
}
