import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:securecar_app/ui/app.dart';
import 'package:securecar_app/ui/pages/splash/splash_page.dart';

void main() async {
  final timer = Stopwatch()..start();
  log('app: start.');

  runApp(const SplashPage());

  await Hive.initFlutter();
  await Hive.openBox<void>('userInfo');

  runApp(const App());

  timer.stop();
  log('app: started. ${timer.elapsedMilliseconds}ms to run.');
}
