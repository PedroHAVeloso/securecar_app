import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:securecar_app/interactor/register_user/register_user_cubit.dart';
import 'package:securecar_app/interactor/register_user/register_user_state.dart';
import 'package:securecar_app/ui/widgets/appbar/appbar_widget.dart';
import 'package:securecar_app/ui/widgets/buttons/primary_button_widget.dart';
import 'package:securecar_app/ui/widgets/buttons/text_button_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/code_field_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/date_field_widget.dart';
import 'package:securecar_app/ui/widgets/text_fields/text_field_widget.dart';

part 'stages/first_stage_register_user_page.dart';
part 'stages/second_stage_register_user_page.dart';
part 'stages/third_stage_register_user_page.dart';
part 'stages/registered_register_user_page.dart';

final _nameController = TextEditingController();
final _cpfController = TextEditingController();
final _birthController = TextEditingController();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final _codeController = TextEditingController();

/// Tela de cadastro de usuário.
class RegisterUserPage extends StatelessWidget {
  // ignore: public_member_api_docs
  const RegisterUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterUserCubit(),
      child: BlocBuilder<RegisterUserCubit, RegisterUserState>(
        builder: (context, state) {
          switch (state) {
            case RegisterUserLoadingState():
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );

            case RegisterUserFirstStageState():
              return const FirstStageRegisterUserPage();

            case RegisterUserSecondStageState():
              return const SecondStageRegisterUserPage();

            case RegisterUserThirdStageState():
              return ThirdStageRegisterUserPage(
                isValidCode: state.isValidCode,
                validationCode: state.validationCode,
              );

            case RegisterUserRegisteredState():
              return RegisteredRegisterUserPage(
                isRegistered: state.isRegistered,
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
