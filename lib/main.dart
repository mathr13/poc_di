import 'package:flutter/material.dart';
import 'package:poc_di/foo_main.dart';

import 'Utilities/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialiseGetIt();
  runApp(const FooApp());
}