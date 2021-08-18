import 'package:chat_0818/global.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () => {
                      Globals.router.navigateTo(context, '/chat',
                          transition: TransitionType.fadeIn)
                    },
                child: Text('登录'))
          ],
        ),
      ),
    );
  }
}
