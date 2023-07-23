class CpfValidator {
  /// CPFs inválidos.
  static const List<String> _invalids = [
    '00000000000',
    '11111111111',
    '22222222222',
    '33333333333',
    '44444444444',
    '55555555555',
    '66666666666',
    '77777777777',
    '88888888888',
    '99999999999',
    '12345678909',
  ];

  /// Gerar o digito verificador.
  static int _verifierDigit(String cpf) {
    final numbers =
        cpf.split('').map((number) => int.parse(number, radix: 10)).toList();

    final modulus = numbers.length + 1;

    final multiplied = <int>[];

    for (var i = 0; i < numbers.length; i++) {
      multiplied.add(numbers[i] * (modulus - i));
    }

    final mod = multiplied.reduce((buffer, number) => buffer + number) % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }

  /// Verificar a validade de um CPF informado.
  static bool isValid(String? cpf) {
    if (cpf == null || cpf.isEmpty) {
      return false;
    }

    if (cpf.length != 11) {
      return false;
    }

    if (_invalids.contains(cpf)) {
      return false;
    }

    var numbers = cpf.substring(0, 9);
    numbers += _verifierDigit(numbers).toString();
    numbers += _verifierDigit(numbers).toString();

    return numbers.substring(9) == cpf.substring(9);
  }
}
