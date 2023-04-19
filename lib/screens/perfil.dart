
import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/settings_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';



class PERFIL extends StatelessWidget {
  const PERFIL({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PERFIL",
      home: EditProfilePage
      (),
      
    );
  }
}

class UserData extends StatefulWidget {
  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  List<dynamic> _userData = [];

  Future<void> _getDaliaUserData() async {
    final response = await http.get(
        Uri.parse('https://powerfulmind.up.railway.app/usuario/searchAll'));
    if (response.statusCode == 201) {
      final List<dynamic> users = jsonDecode(response.body);
      setState(() {
        _userData =
            users.where((user) => user['correo'] == 'dalia@poot.com').toList();
      });
    } else {
      throw Exception('Failed to load user data');
    }
  }

  @override
  void initState() {
    super.initState();
    _getDaliaUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: Center(
        child: _userData.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name: ${_userData[0]['nombreUsuario']}'),
                  Text('Last Name: ${_userData[0]['apellidoUsuario']}'),
                  Text('Birthdate: ${_userData[0]['fechaNacimiento']}'),
                  Text('Email: ${_userData[0]['correo']}'),
                ],
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  List<dynamic> _userData = [];
  String? _correo;

  Future<void> _getDaliaUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _correo = prefs.getString('email');
    final response = await http.get(
        Uri.parse('https://powerfulmind.up.railway.app/usuario/searchAll'));
    if (response.statusCode == 201) {
      final List<dynamic> users = jsonDecode(response.body);
      setState(() {
        _userData = users
            .where((user) => user['correo'] == _correo)
            .toList();
      });
    } else {
      throw Exception('Failed to load user data');
    }
  }
  Future<void> clearUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('email');
    await prefs.remove('password');
    await prefs.remove('rol');
    showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Email borrado '),
              content: const Text(
                  'Borrado con exito '),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          );
  }


  @override
  void initState() {
    super.initState();
    _getDaliaUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(151, 83, 214, 1),
          elevation: 1,
        ),
        body: Center(
          child: _userData.isNotEmpty
              ? Container(
                  padding: EdgeInsets.only(left: 16, top: 25, right: 16),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: ListView(
                      children: [
                        // Center(
                        //   child: Text(
                        //     " perfil",
                        //     style: TextStyle(
                        //         fontSize: 25, fontWeight: FontWeight.w500),
                        //   ),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(0, 10))
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://p77-sign-va.tiktokcdn.com/tos-maliva-avt-0068/e547d3b8ed07fe40d314336cee361323~c5_720x720.jpeg?x-expires=1681772400&x-signature=jIwnu4pKtnzDe%2FFZ762uBpIpMlM%3D"))),
                              ),
                              // Positioned(
                              //   bottom: 0,
                              //   right: 0,
                              //   child: Container(
                              //     height: 40,
                              //     width: 40,
                              //     decoration: BoxDecoration(
                              //       shape: BoxShape.circle,
                              //       border: Border.all(
                              //         width: 4,
                              //         color: Theme.of(context)
                              //             .scaffoldBackgroundColor,
                              //       ),
                              //       color: Colors.deepPurpleAccent,
                              //     ),
                              //     child: Icon(
                              //       Icons.edit,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        buildTextField("Nombres",
                            "${_userData[0]['nombreUsuario']}", false),
                        buildTextField("Apellidos",
                            "${_userData[0]['apellidoUsuario']}", false),
                        buildTextField(
                            "e-mail", "${_userData[0]['correo']}", false),
                        buildTextField(
                            "Telefono", "${_userData[0]['telefono']}", false),
                        buildTextField(
                            "Rol", "${_userData[0]['roleUsuario']}", false),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () { clearUserData();},
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(151, 83, 214, 1),
                                padding: EdgeInsets.symmetric(horizontal: 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 2.2,
                                  color: Colors.white,
                                ),
                              ),
                              child: Text("salir"),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                )
              : CircularProgressIndicator(),
        ));
  }

  // este es el metodo para el perfil de usario donde se ve reflejado el nombre y sus componentes
  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}