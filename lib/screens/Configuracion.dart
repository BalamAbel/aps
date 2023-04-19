

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configuracion extends StatefulWidget {
  const Configuracion({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Configuracion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        elevation: 1,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Color.fromRGBO(151, 83, 214, 1),
        //   ),
        // ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Ajustes",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromRGBO(151, 83, 214, 1),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Cuenta",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 5,
            ),
            SizedBox(
              height: 20,
            ),
         
             buildAccountOptionRow(context, "Cambiar contraseña"),
             buildAccountOptionRow(context, "Configuracion de Contenido"),
             buildAccountOptionRow(context, "Social"),
             buildAccountOptionRow(context,"Idioma"),
             buildAccountOptionRow(context,"Privacidad y Seguridad"),
            
            SizedBox(height: 60),
                  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromRGBO(151, 83, 214, 1),
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                  onTap: (){
                //   Navigator.push(context, MaterialPageRoute(
                // builder: (context) => (),
                // ));
                },
                child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 55),
                  child: Text("Cerrar sesion", 
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),),
                )
              )
                )
          ],
          ),

                    ],
                  ),
                ),
              );
            }

 

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(title),
                      content: Column(
                        mainAxisSize:  MainAxisSize.min,
                        children: [
                          Text("Option 1"),
                          Text("Option 2 "),
                          Text("Option 3"),
                          Text("Option  4"),
                        ],
                      ),
                      actions: [
                        FloatingActionButton(onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child:  Text("Close"),
                        )
                      ],
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric( vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(151, 83, 214, 1),
                  )
                ],
              ),
            ),
          );
  }
}