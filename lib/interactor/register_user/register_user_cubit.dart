import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:securecar_app/interactor/register_user/register_user_state.dart';

class RegisterUserCubit extends Cubit<RegisterUserState> {
  RegisterUserCubit() : super(RegisterUserFirstStageState());

  void jumpToFirstStage() {
    emit(RegisterUserFirstStageState());
  }

  void jumpToSecondStage() {
    emit(RegisterUserSecondStageState());
  }

  void jumpToThirdStage() {
    emit(RegisterUserThirdStageState());
  }

  void registerUser() {
    emit(RegisterUserLoadingState());
  }
}
