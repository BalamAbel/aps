// To parse this JSON data, do
//
//     final pacienteCreateRequestDto = pacienteCreateRequestDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class PacienteCreateRequestDto {
    PacienteCreateRequestDto({
        required this.nombreUsuario,
        required this.apellidoUsuario,
        required this.correo,
        required this.fechaNacimiento,
        required this.password,
        required this.roleUsuario,
    });

    final String nombreUsuario;
    final String apellidoUsuario;
    final String correo;
    final String fechaNacimiento;
    final String password;
    final String roleUsuario;

    factory PacienteCreateRequestDto.fromRawJson(String str) => PacienteCreateRequestDto.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PacienteCreateRequestDto.fromJson(Map<String, dynamic> json) => PacienteCreateRequestDto(
        nombreUsuario: json["nombreUsuario"],
        apellidoUsuario: json["apellidoUsuario"],
        correo: json["correo"],
        fechaNacimiento: json["fechaNacimiento"],
        password: json["password"],
        roleUsuario: json["roleUsuario"],
    );

    Map<String, dynamic> toJson() => {
        "nombreUsuario": nombreUsuario,
        "apellidoUsuario": apellidoUsuario,
        "correo": correo,
        "fechaNacimiento": fechaNacimiento,
        "password": password,
        "roleUsuario": roleUsuario,
    };
}
