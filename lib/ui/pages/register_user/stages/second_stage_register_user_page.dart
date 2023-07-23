part of '../register_user_page.dart';

/// Segunda página da tela de cadastro de usuário:
/// - Cadastro de senha
class SecondStageRegisterUserPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const SecondStageRegisterUserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterUserCubit>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBarWidget(
        onTapBackButton: registerCubit.jumpToFirstStage,
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
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFieldWidget(
                            hintText: 'Senha',
                            isObscureText: true,
                            fieldController: _passwordController,
                            validator:
                                RegisterUserController.validatePassword(),
                          ),
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
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
                          TextFieldWidget(
                            hintText: 'Repita a senha',
                            isObscureText: true,
                            validator:
                                RegisterUserController.validateRepeatPassword(
                              password: _passwordController.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    PrimaryButtonWidget(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          registerCubit.jumpToThirdStage(
                            name: _nameController.text,
                            email: _emailController.text,
                            cpf: _cpfController.text,
                            birth: _birthController.text,
                            password: _passwordController.text,
                          );
                        }
                      },
                      text: 'Cadastrar',
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
        ),
      ),
    );
  }
}
