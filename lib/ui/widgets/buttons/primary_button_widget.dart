import 'package:flutter/material.dart';

/// Botão primário do aplicativo.
class PrimaryButtonWidget extends StatelessWidget {
  /// Crie um botão primário.
  const PrimaryButtonWidget({
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    super.key,
  });

  /// Função ao pressionar.
  final void Function()? onPressed;

  /// Texto exibido.
  final String text;

  /// Largura do botão.
  final double width;

  /// Altura do botão.
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.apply(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
    );
  }
}
