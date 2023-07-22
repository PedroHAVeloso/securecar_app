import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Tela de boas-vindas.
class WelcomePage extends StatelessWidget {
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
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: FilledButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastrar',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
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
