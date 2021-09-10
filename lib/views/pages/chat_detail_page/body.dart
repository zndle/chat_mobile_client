import 'package:chat_0818/plugins/web_socket_channel.dart';
import 'package:flutter/material.dart';

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
        ElevatedButton(
          onPressed: () {
            WebSocketPlugin.connect();
          },
          child: Text('连接'),
        ),
        ElevatedButton(
          onPressed: () => sendMessage(),
          child: Text('发送'),
        ),
      ],
    );
  }

  // 发送消息
  sendMessage() {
    WebSocketPlugin.send('hello world');
  }
}
