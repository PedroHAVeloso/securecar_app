import 'package:flutter/material.dart';

/// Campo de texto padrão do aplicativo.
class TextFieldWidget extends StatelessWidget {
  /// Crie um campo de texto.
  const TextFieldWidget({
    required this.hintText,
    super.key,
    this.validator,
  });

  /// Valide o valor informado pelo usuário.
  final String Function(String?)? validator;

  /// Texto exibido no campo.
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
