import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Appbar padrão do aplicativo.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  /// Crie uma appbar.
  const AppBarWidget({
    this.isBackButton = true,
    this.isLogo = true,
    this.onTapBackButton,
    super.key,
  });

  /// A ação padrão para o botão é retornar a tela.
  final void Function()? onTapBackButton;

  /// Define se o voltar de retorno será exibido.
  final bool isBackButton;

  /// Define se a logo será exibida.
  final bool isLogo;

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
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: isBackButton
                      ? InkWell(
                          onTap:
                              onTapBackButton ?? () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            'assets/icons/back.svg',
                            height: 36,
                          ),
                        )
                      : const SizedBox.expand(),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: isLogo
                      ? RichText(
                          text: TextSpan(
                            text: 'Secure',
                            style: Theme.of(context).textTheme.labelLarge,
                            children: [
                              TextSpan(
                                text: 'Car',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox.expand(),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
