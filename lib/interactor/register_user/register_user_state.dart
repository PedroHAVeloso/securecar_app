abstract class RegisterUserState {}

class RegisterUserLoadingState extends RegisterUserState {}

class RegisterUserFirstStageState extends RegisterUserState {}

class RegisterUserSecondStageState extends RegisterUserState {}

class RegisterUserThirdStageState extends RegisterUserState {
  RegisterUserThirdStageState({
    required this.validationCode,
    required this.isValidCode,
  });
  final int validationCode;
  final bool isValidCode;
}

class RegisterUserRegisteredState extends RegisterUserState {
  RegisterUserRegisteredState({required this.isRegistered});
  final bool isRegistered;
}

class RegisterUserErrorState extends RegisterUserState {}
