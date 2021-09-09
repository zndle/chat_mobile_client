import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'components/body_section.dart';
import 'components/bottom_section.dart';
import 'providers/index_provider.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final Logger _log = Logger('ChatPageState');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration.zero, () async {
      // var resp = await TestApi.sayHello();
      // _log.fine('get resp ok: ${resp.data}');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _log.fine('Page Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IndexProvider()),
      ],
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          title: Text('ChatPage'),
          elevation: 0.0,
        ),
        bottomNavigationBar: BottomSession(),
        body: BodySection(),
      ),
    );
  }
}
