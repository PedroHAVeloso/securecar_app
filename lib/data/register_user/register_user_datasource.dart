import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class RegisterUserDatasource {
  static Future<({int statusCode, String body})> register({
    required String name,
    required String email,
    required String cpf,
    required String birth,
    required String password,
    required int validationCode,
  }) async {
    log('api');
    final response = await http.post(
      Uri.parse('http://10.0.2.2/securecar_api/user/register'),
      body: jsonEncode(
        <String, dynamic>{
          'name': name,
          'email': email,
          'cpf': cpf,
          'birth': birth,
          'password': password,
          'validation_code': validationCode,
        },
      ),
      headers: {
        'Authorization': '',
      },
    );

    log('body:${response.body}');
    log('statuscode:${response.statusCode}');

    return (
      statusCode: response.statusCode,
      body: response.body,
    );
  }
}
