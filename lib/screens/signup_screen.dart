import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerfullmind/dtos/requests/paciente_create_request_dto.dart';
import 'package:powerfullmind/screens/login_screen.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final lastNameController = TextEditingController();
    final dateController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/CrearCuenta.jpg"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: "Apellidos",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_pin_rounded),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      labelText: "Fecha de nacimiento",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.calendar_month),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Correo Electronico",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                    controller: passwordController,
                    obscureText: passToggle ? true : false,
                    decoration: InputDecoration(
                        labelText: "Contraseña",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        suffixIcon: InkWell(
                          onTap: () {
                            if (passToggle == true) {
                              passToggle = false;
                            } else {
                              passToggle = true;
                            }
                            setState(() {});
                          },
                          child: passToggle
                              ? Icon(CupertinoIcons.eye_slash_fill)
                              : Icon(CupertinoIcons.eye_fill),
                        ))),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Color.fromRGBO(151, 83, 214, 1),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () async {
                        final request = PacienteCreateRequestDto(
                          nombreUsuario: nameController.text,
                          apellidoUsuario: lastNameController.text,
                          correo: emailController.text,
                          fechaNacimiento: dateController.text,
                          password: passwordController.text,
                          roleUsuario: "Paciente",
                        );

                        final response = await createPaciente(request);

                        if (response.statusCode == 201) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        } else {
                          // usuario no logeado
                        }
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Center(
                          child: Text(
                            "Crear Cuenta",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ya tienes una Cuenta?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      "Iniciar Sesion",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(151, 83, 214, 1),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<http.Response> createPaciente(PacienteCreateRequestDto request) {
    return http.post(
      Uri.parse('https://powerfulmind.up.railway.app/usuario/add'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(request),
    );
  }
}
