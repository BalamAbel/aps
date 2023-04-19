// import 'package:flutter/material.dart';
// import 'package:powerfullmind/screens/whatsapp.dart';


// // futura carga de datos
//   class pantalla extends StatelessWidget {
//   const pantalla ({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             // mientras carga
//             return Stack(
//               fit: StackFit.expand,
//               children: [
//                 Image.asset(
//                   'images/LOGO.PNG', // ruta de la imagen de fondo
//                   fit: BoxFit.cover,
//                 ),
//                 Center(
//                   child: CircularProgressIndicator(), // indicador de progreso circular
//                 ),
//               ],
//             );
//           } else {// si carga correctamente, redirige a la otra pantalla
//             {
//                       Navigator.push(context, MaterialPageRoute(
//                     builder: (context) => Whats(),
//                     ));
//             return Container(); // no se muestra nada en esta pantalla
//           }
      
//           }
//         }
//       )
  
//     );
//   }
// }




