import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:securecar_app/ui/pages/login/login_page.dart';
import 'package:securecar_app/ui/pages/register_user/register_user_page.dart';
import 'package:securecar_app/ui/widgets/buttons/primary_button_widget.dart';
import 'package:securecar_app/ui/widgets/buttons/secondary_button_widget.dart';

/// Tela de boas-vindas.
class WelcomePage extends StatelessWidget {
  // ignore: public_member_api_docs
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 240,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(
                  flex: 3,
                ),
                SvgPicture.asset(
                  'assets/images/logo_normal.svg',
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    text: 'Bem-vindo ao ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Secure',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: 'Car',
                        style: Theme.of(context).textTheme.titleLarge!.apply(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    text: 'Entre ',
                    style: Theme.of(context).textTheme.titleLarge,
                    children: [
                      TextSpan(
                        text: 'ou ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: 'cadastre-se ',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: 'para aproveitar as ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: 'ofertas ',
                        style: Theme.of(context).textTheme.titleMedium!.apply(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      TextSpan(
                        text: 'e localizar seu veículo.',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SecondaryButtonWidget(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  text: 'Entrar',
                  width: double.infinity,
                  height: 70,
                ),
                const SizedBox(
                  height: 10,
                ),
                PrimaryButtonWidget(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const RegisterUserPage(),
                    ),
                  ),
                  text: 'Cadastrar',
                  width: double.infinity,
                  height: 70,
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
