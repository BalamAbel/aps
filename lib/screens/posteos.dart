// import 'package:flutter/material.dart';
// import 'package:expandable/expandable.dart';

// class MyPanel extends StatefulWidget {
//   @override
//   _MyPanelState createState() => _MyPanelState();
// }

// class _MyPanelState extends State<MyPanel> {
//   List<Item> _items = [
//     Item(
//       headerValue: 'Técnicas de relajación y manejo de la ansiedad ',
//       expandedValue: 'Ejercicio físico, respiración profunda, meditación',
//       imageUrl: 'https://img.freepik.com/vector-premium/armonia-meditacion-yoga-concepto-naturaleza-mujer-meditando-postura-loto-personaje-femenino-disfrutando-relajacion-al-aire-libre-equilibrio-emocional-vida-positiva-estado-animo-ilustracion-vectorial-dibujos-animados_1016-9564.jpg',
//       isExpanded: false,
//     ),
//     Item(
//       headerValue: 'Cómo el apoyo emocional de amigos y familiares puede ayudar en el tratamiento de la depresión.',
//       expandedValue: 'Demuéstrale que puede contar contigo pasando tiempo con la persona. Escucha, habla o simplemente acompáñala en silencio. Lo importante es que sienta que estás ahí para ayudarla. ',
//       imageUrl: 'https://ixtapayzihuatanejo.com/wp-content/uploads/2019/08/depresion-jovenes-.jpg',
//     ),
//     Item(
//       headerValue: 'Cómo el manejo de las emociones puede mejorar nuestra calidad de vida y nuestra capacidad para enfrentar los desafíos de la vida.',
//       expandedValue: 'Nos ayuda a aproximarnos y relacionarnos con los demás, creando vínculos con nuestro entorno a la vez que mejora nuestro autoconcepto. Despierta nuestra empatía y altruismo hacia los demás y aumenta nuestra sensación de bienestar.',
//       imageUrl: 'https://img.freepik.com/vector-premium/mujeres-emociones-estados-animo-sufren-problemas-psicologicos-depresion-maniaca_101179-1972.jpg',
//     ),
//      Item(
//       headerValue: '¿Qué es el amor propio y por qué es importante cultivarlo?',
//       expandedValue: 'El amor propio es un ingrediente muy importante para gozar de bienestar psicológico y lo podemos definir como la aceptación de los sentimientos que tenemos por nosotros mismos, hacia nuestro físico, personalidad, carácter, actitudes y comportamientos',
//       imageUrl: 'https://img.freepik.com/vector-premium/mujer-joven-abraza-concepto-amor-propio-alta-autoestima-dibujos-animados-estilo-plano_185694-511.jpg?w=2000',
//     ),
//      Item(
//       headerValue: 'La importancia de establecer límites saludables y aprender a decir "no" cuando es necesario.',
//       expandedValue: 'Poner límites nos ayuda a crear nuestro espacio seguro, nuestro refugio, pero también nos aporta autoconocimiento, autoestima, respeto por uno mismo y relaciones más saludables y equilibradas',
//       imageUrl: 'https://media.istockphoto.com/id/1066947776/es/vector/concepto-de-cabeza-de-la-mujer-interior-mente-las-restricciones-y-l%C3%ADmites-internos.jpg?s=612x612&w=0&k=20&c=eV2sKfzkmlIdywvhroxw8CIlmvVfYE15Tbo9iz29Zqs=',
//     ),
//      Item(
//       headerValue: 'Cómo el manejo del tiempo y la organización pueden ayudar a reducir el estrés.',
//       expandedValue: 'Le ayuda a decidir qué asuntos son urgentes y cuáles pueden esperar. Aprender cómo manejar su tiempo, sus actividades y sus compromisos puede ser difícil. Sin embargo, ponerlo en práctica puede hacer que su vida sea más fácil, menos estresante y tenga más sentido.',
//       imageUrl: 'http://on-academy.net/wp-content/uploads/2020/06/diseno-calendario-reserva-citas_23-2148570786.jpg',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//            backgroundColor: Color.fromRGBO(151, 83, 214, 1),

//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             child: _buildPanel(),
//           ),
//         ),
//       ),
//     );
//   }

//  Widget _buildPanel() {
//   return ExpansionPanelList(
//     expansionCallback: (int index, bool isExpanded) {
//       setState(() {
//         _items[index].isExpanded = !isExpanded;
//       });
//     },
//     children: _items.map<ExpansionPanel>((Item item) {
//       return ExpansionPanel(
//         headerBuilder: (BuildContext context, bool isExpanded) {
//           return Container(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 100,
//                   width: 100,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.network(
//                       item.imageUrl,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                   Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(height: 10),
//                       Text(
//                         item.headerValue,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Visibility(
//                         visible: item.isExpanded,
//                         child: Text(
//                           item.expandedValue,
//                           style: TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//         body: Container(
//           padding: EdgeInsets.all(10),
//           // child: Text(item.expandedValue),
//         ),
//         isExpanded: item.isExpanded,
//       );
//     }).toList(),
//   );
// }


// }

// class Item {
//   String headerValue;
//   String expandedValue;
//   String imageUrl;
//   bool isExpanded;

//   Item({
//     required this.headerValue,
//     required this.expandedValue,
//     required this.imageUrl,
//     this.isExpanded = false,
//   });
// }
