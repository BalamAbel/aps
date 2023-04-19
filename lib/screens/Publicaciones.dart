// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Publicacion {
//   final String tituloPublicacion;
//   final String cuerpoPublicacion;

//   Publicacion({
//     required this.tituloPublicacion,
//     required this.cuerpoPublicacion,
//   });

//   factory Publicacion.fromJson(Map<String, dynamic> json) {
//     return Publicacion(
//       tituloPublicacion: json['tituloPublicacion'],
//       cuerpoPublicacion: json['cuerpoPublicacion'],
//     );
//   }
// }

// class Publi extends StatefulWidget {
//   @override
//   _PubliState createState() => _PubliState();
// }

// class _PubliState extends State<Publi> {
//   List<Publicacion> _publicaciones = [];

//   Future<List<Publicacion>> _fetchPublicaciones() async {
//     final response =
//         await http.get(Uri.parse('https://powerfulmind.up.railway.app/publicacion/searchAll'));
//     if (response.statusCode == 201) {
//       List<dynamic> jsonResponse = json.decode(response.body);

//       List<Publicacion> items = jsonResponse
//           .take(8) // limitar a 5 elementos
//           .map((e) => Publicacion(
//                 tituloPublicacion: e['tituloPublicacion'],
//                 cuerpoPublicacion: e['cuerpoPublicacion'],
//               ))
//           .toList();

//       return items;
//     } else {
//       throw Exception('Failed to load publicaciones from API');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _fetchPublicaciones().then((publicaciones) {
//       setState(() {
//         _publicaciones = publicaciones;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//          backgroundColor: Color.fromRGBO(151, 83, 214, 1),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Publicaciones recientes',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _publicaciones.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(14.0),
//                       color: Color.fromRGBO(151, 111, 189, 1)
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             _publicaciones[index].tituloPublicacion,
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 8),
//                           Text(
//                             _publicaciones[index].cuerpoPublicacion,
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
