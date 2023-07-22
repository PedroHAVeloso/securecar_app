import 'package:flutter/material.dart';

/// Botão secundário do aplicativo.
class SecondaryButtonWidget extends StatelessWidget {
  /// Crie um botão secundário.
  const SecondaryButtonWidget({
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
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.apply(
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
      ),
    );
  }
}
