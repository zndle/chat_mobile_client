import 'package:flutter/material.dart';

import 'app.dart';
import 'plugins/logging.dart';

void main() {
  LogPlugin.init();
  runApp(MyApp());
}
