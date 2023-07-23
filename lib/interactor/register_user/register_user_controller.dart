import 'package:age_calculator/age_calculator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:intl/intl.dart';
import 'package:securecar_app/data/cpf_validator.dart';

class RegisterUserController {
  static const String _requiredField = 'Campo obrigatório';

  static String? Function(String?)? validateName() {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      return null;
    };
  }

  static String? Function(String?)? validateCpf() {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      if (!CpfValidator.isValid(value)) {
        return 'Informe um CPF válido.';
      }

      return null;
    };
  }

  static String? Function(String?)? validateEmail() {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      if (!EmailValidator.validate(value)) {
        return 'Informe um e-mail válido.';
      }

      return null;
    };
  }

  static String? Function(String?)? validateBirth() {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      if (AgeCalculator.age(DateFormat('dd/MM/yyyy').parse(value)).years < 18) {
        return 'É necessário ser maior de 18 anos.';
      }

      return null;
    };
  }

  static String? Function(String?)? validatePassword() {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      final letters = RegExp('^(?=.*?[A-Z])(?=.*?[a-z])');
      if (!letters.hasMatch(value)) {
        return 'Deve ter letras maiúsculos e minúsculos.';
      }

      final numbers = RegExp('^(?=.*?[0-9])');
      if (!numbers.hasMatch(value)) {
        return 'Deve ter pelo menos um número.';
      }

      final special = RegExp(r'^(?=.*?[!@#%()-+\$&*~])');
      if (!special.hasMatch(value)) {
        return 'Deve ter pelo menos um caractere especial.';
      }

      if (value.length < 8 || value.length > 40) {
        return 'Deve ter de 8 a 40 caracteres.';
      }

      return null;
    };
  }

  static String? Function(String?)? validateRepeatPassword({
    required String password,
  }) {
    return (value) {
      if (value!.isEmpty) {
        return _requiredField;
      }

      if (value != password) {
        return 'As senhas devem ser iguais.';
      }

      return null;
    };
  }
}
