import 'package:flutter/material.dart';

/// Botão de texto padrão do aplicativo.
class TextButtonWidget extends StatelessWidget {
  /// Crie um botão de texto.
  const TextButtonWidget({
    required this.onPressed,
    required this.text,
    super.key,
  });

  /// Função ao pressionar.
  final void Function()? onPressed;

  /// Texto.
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.apply(
              decoration: TextDecoration.underline,
              color: Theme.of(context).colorScheme.secondary,
            ),
      ),
    );
  }
}
