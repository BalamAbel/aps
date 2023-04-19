import 'dart:convert';
import 'package:powerfullmind/screens/whatsapp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Usuarios {
  final String nombreUsuario;
  final String correo;
  final String roleUsuario;

  Usuarios({
    required this.nombreUsuario,
    required this.correo,
    required this.roleUsuario,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      nombreUsuario: json['nombreUsuario'],
      correo: json['correo'],
      roleUsuario: json['roleUsuario'],
    );
  }
}

class agendar extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<agendar> {
  List<Usuarios> _usuarios = [];

   Future<List<Usuarios>> _fetchUsuarios() async {
    final response = await http.get(Uri.parse('https://powerfulmind.up.railway.app/usuario/searchAll'));
    if (response.statusCode == 201) {
      List<dynamic> jsonResponse = json.decode(response.body);

      // Filtrar solo los usuarios cuyo roleUsuario sea "psicologo"
      List<Usuarios> psicologos = jsonResponse
          .map((e) => Usuarios.fromJson(e))
          .where((usuario) => usuario.roleUsuario == 'Psicologo')
          .toList();

      return psicologos;
    } else {
      throw Exception('Failed to load usuarios from API');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchUsuarios().then((usuarios) {
      setState(() {
        _usuarios = usuarios;
      });
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(151, 83, 214, 1),
      body: SingleChildScrollView(child: Column(children: [
        SizedBox(height: 50),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                          ),
                        ),
                                InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
            ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [



                        CircleAvatar(radius: 35,
                        backgroundImage: AssetImage("images/psicologa1.jpg"),
                        ),
                        SizedBox(height: 15),
                        Text(   'Cynthia Verde Cortazar',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 5),
                        Text("Neuropsicología",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height/ 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Acerca de la Psicologa",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("Egresada de la universidad autonoma de yucatan, continuo mi trayectoria laboral en un centro medico para la salud mental de Yucatan.",
                  style: TextStyle(fontSize: 18,
                  color: Colors.black87,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Especialidad:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("Neuropsicología",
                  style: TextStyle(fontSize: 18,
                  color: Colors.black87,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Cedula:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 5),
                  Text("2211700",
                  style: TextStyle(fontSize: 18,
                  color: Colors.black87,
                  ),
                  ),
                  SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Reseñas:",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                 Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                      Icons.star, color:
                       Colors.amber,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      )
                    ],
                  )
  
                    ]
              )
                  ),
                  SizedBox(height: 20),
                   Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Agenda tu cita vía WhatsApp..",
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromRGBO(151, 83, 214, 1),
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Whats()));  
                  },
                    child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.whatsapp_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Agendar",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ),
                  ),
              ]
                ),
              ],
            ) 
            )
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 467, // ajusta el valor según sea necesario
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Escribe aquí tu comentario...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
              ),
            )


        ]
     
          )
            )
          ],
        )
      ),
      ]
  
      )
      )
      );
      
      
  
  
  }
}