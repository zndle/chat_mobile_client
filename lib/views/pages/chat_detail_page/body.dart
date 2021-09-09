import 'package:chat_0818/plugins/web_socket_channel.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
