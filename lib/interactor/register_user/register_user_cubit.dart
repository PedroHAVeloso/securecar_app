import 'dart:math';
import 'dart:developer' as dev;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:securecar_app/data/register_user/register_user_datasource.dart';
import 'package:securecar_app/interactor/register_user/register_user_state.dart';

class RegisterUserCubit extends Cubit<RegisterUserState> {
  RegisterUserCubit() : super(RegisterUserFirstStageState());

  void jumpToFirstStage() {
    emit(RegisterUserFirstStageState());
  }

  void jumpToSecondStage() {
    emit(RegisterUserSecondStageState());
  }

  void jumpToThirdStage({
    required String name,
    required String email,
    required String cpf,
    required String birth,
    required String password,
  }) async {
    emit(RegisterUserLoadingState());

    final random = Random();
    final validationCode = random.nextInt(9999) + 1000;

    final dateBirth = DateFormat('dd/MM/yyyy').parse(birth);
    birth = DateFormat('yyyy-MM-dd').format(dateBirth);

    await RegisterUserDatasource.register(
      name: name,
      email: email,
      cpf: cpf,
      birth: birth,
      password: password,
      validationCode: validationCode,
    );

    await RegisterUserDatasource.sendUserCode(
      email: email,
      name: name,
      validationCode: validationCode,
    );

    dev.log(validationCode.toString());

    emit(
      RegisterUserThirdStageState(
        validationCode: validationCode,
        isValidCode: true,
      ),
    );
  }

  void validateUser({
    required String email,
    required int validationCode,
  }) async {
    emit(RegisterUserLoadingState());

    await RegisterUserDatasource.validateUser(
      email: email,
      validationCode: validationCode,
    );

    emit(RegisterUserRegisteredState(isRegistered: true));
  }

  void invalidCode({required int validationCode}) {
    emit(
      RegisterUserThirdStageState(
        validationCode: validationCode,
        isValidCode: false,
      ),
    );
  }
}
