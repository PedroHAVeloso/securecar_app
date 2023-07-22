import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Appbar padrão do aplicativo.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  /// Crie uma appbar.
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: preferredSize.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  'assets/icons/back.svg',
                  height: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
