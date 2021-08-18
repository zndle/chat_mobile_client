import 'package:chat_0818/views/pages/chat_page/chat_page.dart';
import 'package:chat_0818/views/pages/home/page.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static void configRouter(FluroRouter router) {
    router.define("/", handler: _homeHandler);
    router.define("/chat", handler: _chatHandler);
  }
}

var _homeHandler = Handler(handlerFunc: (ctx, args) => HomePage());
var _chatHandler = Handler(handlerFunc: (ctx, args) => ChatPage());
