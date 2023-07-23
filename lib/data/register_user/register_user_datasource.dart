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
      Uri.parse('https://securecar.agape.host/securecar_api/user/register'),
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

  static Future<({int statusCode, String body})> sendUserCode({
    required String name,
    required String email,
    required int validationCode,
  }) async {
    log('api email');
    final response = await http.post(
      Uri.parse(
          'https://securecar.agape.host/securecar_api/email/send-user-code'),
      body: jsonEncode(
        <String, dynamic>{
          'name': name,
          'email': email,
          'code': validationCode,
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

  static Future<({int statusCode, String body})> validateUser({
    required String email,
    required int validationCode,
  }) async {
    log('api email');
    final response = await http.put(
      Uri.parse('https://securecar.agape.host/securecar_api/user/validate'),
      body: jsonEncode(
        <String, dynamic>{
          'email': email,
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
