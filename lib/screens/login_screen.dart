import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:powerfullmind/dtos/requests/login_request_dto.dart';
import 'package:powerfullmind/screens/page_one.dart';
import 'package:powerfullmind/screens/signup_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:powerfullmind/provider/feelings_provider.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    final correoController = TextEditingController();
    final passwordController = TextEditingController();
    String? _correo;
    
  

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(40),
                child: Image.asset("images/POWER_LOGO.png"),
              ),
              // SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: correoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Correo Electronico"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Contraseña"),
                    prefixIcon: Icon(Icons.lock),
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
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    // color: Color(0xFF7165D6),
                    color: Color.fromRGBO(151, 83, 214, 1),
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () async {
                       
                        final request = LoginRequestDto(
                          correo: correoController.text,
                          password: passwordController.text,
                        );

                        final response = await login(request);
                        final logger = Logger();

                        if (response.statusCode == 201) {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          await prefs.setString('email', correoController.text);
                          
                          logger.d("respuesta de login: ${response.body}");
                           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  ChangeNotifierProvider( create: (BuildContext context) =>
                        FeelingsProvider(), 
                        child: (const MaterialApp(
                       debugShowCheckedModeBanner: false,
                        title: 'Material App',
                        home: PageOne ()))))
                           );
                        } else {
                          
                          // usuario no logeado
                        }
                         SharedPreferences prefs = await SharedPreferences.getInstance();
                          String? _correo = prefs.getString('email');
                        print("1 $_correo");
                        print(" 2 ${correoController.text}");
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Center(
                          child: Text(
                            "Continuar",
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
              // SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "No tienes ninguna cuenta?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                  TextButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: Text(
                      "Crear Cuenta",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(151, 83, 214, 1),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<http.Response> login(LoginRequestDto request) {
    return http.post(
      Uri.parse('https://powerfulmind.up.railway.app/usuario/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(request),
    );
  }
}
