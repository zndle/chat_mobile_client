import 'package:chat_0818/views/pages/chat_detail_page/page.dart';
import 'package:chat_0818/views/pages/chat_page/page.dart';
import 'package:chat_0818/views/pages/home_page/home_page.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static void configRouter(FluroRouter router) {
    router.define("/", handler: _homeHandler);
    router.define("/chat", handler: _chatHandler);
    router.define("/chat/:id", handler: _chatDetailHandler);
  }
}

var _homeHandler = Handler(handlerFunc: (ctx, args) => HomePage());
var _chatHandler = Handler(handlerFunc: (ctx, args) => ChatPage());
var _chatDetailHandler = Handler(handlerFunc: (ctx, args) => ChatDetailPage());
