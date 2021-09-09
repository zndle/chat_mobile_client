import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebSocketPlugin {
  static final _log = Logger('WebSocketPlugin');
  static IOWebSocketChannel? _channel;

  static connect() {
    _channel = IOWebSocketChannel.connect('ws://10.0.2.2:1854/ws');

    _channel!.stream.listen((element) {
      _log.fine('got message: $element');
    });
  }

  static close() {
    _channel!.sink.close(status.goingAway);
  }

  static send(dynamic msg) {
    var data = <String, dynamic>{
      'from': 1,
      'to': 2,
      'content': msg,
      'action': 'publish',
    };
    var dataJson = jsonEncode(data);
    _log.fine('转化为 json 的数据帧: $dataJson');
    _channel!.sink.add(dataJson);
  }
}
