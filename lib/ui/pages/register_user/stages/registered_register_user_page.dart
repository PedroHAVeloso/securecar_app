part of '../register_user_page.dart';

class RegisteredRegisterUserPage extends StatelessWidget {
  const RegisteredRegisterUserPage({
    required this.isRegistered,
    super.key,
  });

  final bool isRegistered;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        isBackButton: false,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height -
              const AppBarWidget().preferredSize.height -
              40,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(flex: 2),
                    SvgPicture.asset(
                      isRegistered
                          ? 'assets/icons/situation.svg'
                          : 'assets/icons/situation_negative.svg',
                    ),
                    const Spacer(),
                    if (isRegistered) ...[
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Cadastro realizado com ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'sucesso',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .apply(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            const TextSpan(text: '.'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Agora você pode usufruir do ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'Secure',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: 'Car',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .apply(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            const TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    ] else ...[
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Ocorreu um ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'erro ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .apply(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                            ),
                            const TextSpan(
                              text: 'ao realizarmos seu cadastro.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Volte e tente novamente.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                    const Spacer(),
                    PrimaryButtonWidget(
                      onPressed: () => Navigator.pop(context),
                      text: isRegistered ? 'Prosseguir' : 'Voltar',
                      width: double.infinity,
                      height: 70,
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
