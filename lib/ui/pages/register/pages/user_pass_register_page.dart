import 'package:flutter/material.dart';
import 'package:securecar_app/ui/widgets/buttons/primary_button_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/text_field_widget.dart';

/// Segunda página da tela de cadastro de usuário:
/// - Cadastro de senha
class UserPassRegisterPage extends StatelessWidget {
  const UserPassRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        RichText(
          text: TextSpan(
            text: 'Pronto! ',
            style: Theme.of(context).textTheme.titleLarge,
            children: [
              TextSpan(
                text: 'Agora crie uma senha para sua conta.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        const Spacer(),
        const TextFieldWidget(hintText: 'Senha'),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text: 'A senha ',
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(
                text: 'precisa ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              TextSpan(
                text: 'conter: \n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '▪️ No mínimo ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '8 caracteres.\n',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(
                text: '▪️ Pelo menos uma letra ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: 'maiúscula ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(
                text: 'e uma ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: 'minúscula.\n',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(
                text: '▪️ Pelo menos um ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: 'número.\n',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(
                text: '▪️ Pelo menos um ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: 'símbolo.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextFieldWidget(hintText: 'Repita a senha'),
        const Spacer(),
        PrimaryButtonWidget(
          onPressed: () {},
          text: 'Cadastrar',
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
