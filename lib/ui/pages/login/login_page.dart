import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:securecar_app/ui/widgets/appbar/appbar_widget.dart';
import 'package:securecar_app/ui/widgets/buttons/primary_button_widget.dart';
import 'package:securecar_app/ui/widgets/buttons/text_button_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/text_field_widget.dart';

/// Tela de login de usuário.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        isLogo: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 280,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/images/logo_normal.svg',
                ),
                const Spacer(),
                const Form(
                  child: Column(
                    children: [
                      TextFieldWidget(
                        hintText: 'E-mail',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFieldWidget(
                        hintText: 'Senha',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButtonWidget(
                  onPressed: () {},
                  text: 'Esqueci minha senha',
                ),
                const Spacer(),
                PrimaryButtonWidget(
                  onPressed: () {},
                  text: 'Entrar',
                  width: double.infinity,
                  height: 70,
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
