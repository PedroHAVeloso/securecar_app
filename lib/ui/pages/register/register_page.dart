import 'package:flutter/material.dart';
import 'package:securecar_app/ui/pages/register/pages/user_data_register_page.dart';
import 'package:securecar_app/ui/pages/register/pages/user_pass_register_page.dart';
import 'package:securecar_app/ui/widgets/appbar/appbar_widget.dart';

/// Tela de cadastro de usuário.
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
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
                child: PageView(
                  controller: pageController,
                  children: [
                    UserDataRegisterPage(pageController: pageController),
                    UserPassRegisterPage(),
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
