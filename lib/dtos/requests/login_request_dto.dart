// To parse this JSON data, do
//
//     final loginRequestDto = loginRequestDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class LoginRequestDto {
  LoginRequestDto({
    required this.correo,
    required this.password,
  });

  final String correo;
  final String password;

  factory LoginRequestDto.fromRawJson(String str) =>
      LoginRequestDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      LoginRequestDto(
        correo: json["correo"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "correo": correo,
        "password": password,
      };
}
