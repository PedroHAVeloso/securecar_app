part of '../register_user_page.dart';

/// Primeira página da tela de cadastro de usuário:
/// - Cadastro de nome
/// - Cadastro de CPF
/// - Cadastro de data de nascimento
/// - Cadastro de e-mail
class FirstStageRegisterUserPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const FirstStageRegisterUserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterUserCubit>();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const AppBarWidget(),
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
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFieldWidget(
                            hintText: 'Nome completo',
                            fieldController: _nameController,
                            validator: RegisterUserController.validateName(),
                          ),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'CPF',
                            fieldController: _cpfController,
                            validator: RegisterUserController.validateCpf(),
                          ),
                          const SizedBox(height: 10),
                          DateFieldWidget(
                            hintText: 'Data de nascimento',
                            fieldController: _birthController,
                            validator: RegisterUserController.validateBirth(),
                          ),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            hintText: 'E-mail',
                            fieldController: _emailController,
                            validator: RegisterUserController.validateEmail(),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    PrimaryButtonWidget(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          registerCubit.jumpToSecondStage();
                        }
                      },
                      text: 'Avançar',
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
