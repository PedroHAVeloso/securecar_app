import 'package:flutter/material.dart';
import 'package:securecar_app/ui/pages/register/pages/user_data_register_page.dart';
import 'package:securecar_app/ui/pages/register/pages/user_pass_register_page.dart';

/// Tela de cadastro de usuário.
class RegisterPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        UserDataRegisterPage(pageController: pageController),
        UserPassRegisterPage(pageController: pageController),
      ],
    );
  }
}
