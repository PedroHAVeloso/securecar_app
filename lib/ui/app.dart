import 'package:flutter/material.dart';
import 'package:securecar_app/ui/pages/splash/splash_page.dart';
import 'package:securecar_app/ui/pages/welcome/welcome_page.dart';
import 'package:securecar_app/ui/utils/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: WelcomePage(),
    );
  }
}
