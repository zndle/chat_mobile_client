import 'package:logging/logging.dart';

class LogPlugin {
  static init() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print(
          '${record.level.name}@${record.time}\t${record.loggerName}\t${record.message}');
    });
  }
}
