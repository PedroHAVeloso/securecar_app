import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Tela Splash.
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.4,
            child: SvgPicture.asset(
              'assets/images/logo_normal.svg',
              width: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
