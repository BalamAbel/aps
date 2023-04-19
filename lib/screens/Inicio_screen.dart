import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:powerfullmind/screens/appointment_screen.dart';

class Usuarios {
  final String nombreUsuario;
  final String correo;
  final String imageUsuario;
  final String roleUsuario;

  Usuarios({
    required this.nombreUsuario,
    required this.correo,
    required this.imageUsuario,
    required this.roleUsuario,
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) {
    return Usuarios(
      nombreUsuario: json['nombreUsuario'],
      correo: json['correo'],
      imageUsuario: json['imageUsuario'],
      roleUsuario: json['roleUsuario'],
    );
  }
}

class inicio extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<inicio> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        title: Text(''),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hola de nuevo',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Psicólogos con mejor reseña',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/LOGO.png'),
                ),
              ],
            ),
             SizedBox(height: 20),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar psicólogo...',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
            SizedBox(height: 20),Expanded(
    child: ListView.builder(
      itemCount: _usuarios.length,
      itemBuilder: (context, index) {
        final usuario = _usuarios[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => agendar()),
            );
          },
          child: Container( 
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 35,
                  //backgroundImage: AssetImage("images/${imgs[index]}"),
                ),
                Text(
                  usuario.nombreUsuario,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                Text(usuario.roleUsuario),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(
                      Icons.star, 
                      color: Colors.amber,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    ),
),

      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: _usuarios.length,
      //           itemBuilder: (context, index) {
      //             final usuario = _usuarios[index];
      //             return Container(
      //               margin: EdgeInsets.only(bottom: 10),
      //               padding: EdgeInsets.symmetric(vertical: 10),
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(10),
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.black12,
      //                     blurRadius: 4,
      //                     spreadRadius: 2,
      //                   ),
      //                 ],
      //               ),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             CircleAvatar(
      //               radius: 35,
      //               //backgroundImage: AssetImage("images/${imgs[index]}"),
      //             ),
      //             Text(
      //               usuario.nombreUsuario,
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.w500,
      //                 color: Colors.black54,
      //               ),
      //             ),
      //             Text(usuario.roleUsuario),
      //             Row(
      //               mainAxisSize: MainAxisSize.min,
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children:[
      //                 Icon(
      //                 Icons.star, color:
      //                  Colors.amber,
      //                 ),
      //                 Text(
      //                   "4.9",
      //                   style: TextStyle(
      //                     color: Colors.black45,
      //                   ),
      //                 )
                      
      //               ],
      //             )
                  
      //           ],
      //         ),
      //       );
            

            
      //       // ListTile(
      //       //   title: Text(usuario.nombreUsuario),
      //       //   subtitle: Text(usuario.correo),
      //       // );
      //     },
      //   ),
      // ),
          ]
        )
      )
    );
  }
}
