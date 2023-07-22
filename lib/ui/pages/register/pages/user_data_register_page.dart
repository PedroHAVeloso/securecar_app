import 'package:flutter/material.dart';
import 'package:securecar_app/ui/widgets/buttons/primary_button_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/text_field_widget.dart';

/// Primeira página da tela de cadastro de usuário:
/// - Cadastro de nome
/// - Cadastro de CPF
/// - Cadastro de data de nascimento
/// - Cadastro de e-mail
class UserDataRegisterPage extends StatelessWidget {
  const UserDataRegisterPage({
    required this.pageController,
    super.key,
  });

  /// Controlador do PageView para passagem de página.
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        RichText(
          text: TextSpan(
            text: 'Precisamos ',
            style: Theme.of(context).textTheme.titleLarge,
            children: [
              TextSpan(
                text: 'de algumas informações suas primeiro:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        const Spacer(),
        const TextFieldWidget(hintText: 'Nome completo'),
        const SizedBox(height: 10),
        const TextFieldWidget(hintText: 'CPF'),
        const SizedBox(height: 10),
        const TextFieldWidget(hintText: 'Data de nascimento'),
        const SizedBox(height: 10),
        const TextFieldWidget(hintText: 'E-mail'),
        const Spacer(),
        PrimaryButtonWidget(
          onPressed: () => pageController.jumpToPage(1),
          text: 'Avançar',
          width: double.infinity,
          height: 70,
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
