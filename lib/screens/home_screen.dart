// import 'package:flutter/material.dart';
// import 'package:powerfullmind/screens/appointment_screen.dart';
// import 'package:powerfullmind/screens/page_two.dart';


// class HomeScreen extends StatelessWidget{
//   List imgs = [
//     "psicologa1.jpg",
//     "psicologa2.jpg",
//     "psicologa3.jpg",
//     "psicologa4.jpg",
//     "psicologa5.jpg",
//     "psicologa6.jpg",
//   ];
//   @override
//   Widget build(BuildContext context){
//    return  Scaffold(
//         appBar: AppBar(
//            backgroundColor: Color.fromRGBO(151, 83, 214, 1),
//         ),
//         body:  Padding(
//       padding: EdgeInsets.only(top: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
//               children: [
//                 Text(
//                   "Hola de nuevo",
//                   style: TextStyle(
//                     fontSize: 35,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 CircleAvatar(
//                   radius: 25,
//                   backgroundImage: AssetImage("images/LOGO.png"),
//                 )
//               ],
//             ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
                
//               ],
//             ),
//             SizedBox(height: 10),
//             Padding(
//             padding: EdgeInsets.only(left: 15),
//             child: Text("Psicologos Con Mejor Reseña",
//             style: TextStyle(fontSize: 23,
//             fontWeight: FontWeight.w500,
//             color: Colors.black54,
//             ),
//           ),
//         ),
//         ListView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemCount: 6,
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemBuilder: ((context, index) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute (builder: (context)=> agendar(),
//                 ));
//               } ,
//             child: Container(
//               margin:  EdgeInsets.all(10),
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
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   CircleAvatar(
//                     radius: 35,
//                     backgroundImage: AssetImage("images/${imgs[index]}"),
//                   ),
//                   Text(
//                     "Psic. Nombre de Psicologa",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54,
//                     ),
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children:[
//                       Icon(
//                       Icons.star, color:
//                        Colors.amber,
//                       ),
//                       Text(
//                         "4.9",
//                         style: TextStyle(
//                           color: Colors.black45,
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               ),
//             );
//           }),
//         ),
//         ],
//       ),
//         )
//     );
//   }
// }