import 'package:flutter/material.dart';

import 'body.dart';

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
      appBar: AppBar(
        title: Text('Chat Detail'),
      ),
      body: BodySection(),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Color(0xfff5f5f5),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 50,
              offset: Offset(0, -5),
            ),
          ],
        ),
      ),
    );
  }
}
