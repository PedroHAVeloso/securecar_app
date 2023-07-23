part of '../register_user_page.dart';

/// Terceira página da tela de cadastro de usuário:
/// - Validação com código numérico.
class ThirdStageRegisterUserPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const ThirdStageRegisterUserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterUserCubit>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: const AppBarWidget(
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
                  maxWidth: 280,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(
                      flex: 4,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Enviamos-lhe um e-mail com um ',
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: 'código ',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          TextSpan(
                            text: 'e verificação.\n'
                                'Use o código no campo abaixo para ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'validarmos',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          TextSpan(
                            text: '.',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Text(
                      'Código de Verificação:',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Form(
                      key: formKey,
                      child: CodeFieldWidget(
                        fieldController: _codeController,
                      ),
                    ),
                    const Spacer(),
                    TextButtonWidget(
                      onPressed: () {},
                      text: 'Reenviar código',
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    PrimaryButtonWidget(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          registerCubit.jumpToThirdStage();
                        }
                      },
                      text: 'Validar',
                      width: double.infinity,
                      height: 70,
                    ),
                    const Spacer(
                      flex: 4,
                    ),
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
