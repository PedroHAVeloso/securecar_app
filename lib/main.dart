import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:securecar_app/ui/app.dart';
import 'package:securecar_app/ui/pages/splash/splash_page.dart';

void main() async {
  final timer = Stopwatch()..start();
  log('app: start.');

  runApp(const SplashPage());

  await Future<void>.delayed(const Duration(seconds: 1));

  runApp(const App());

  timer.stop();
  log('app: started. ${timer.elapsedMilliseconds}ms to run.');
}
