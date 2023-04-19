import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/Configuracion.dart';
import 'package:powerfullmind/screens/Notificaciones.dart';
import 'package:powerfullmind/screens/perfil.dart';
import 'package:powerfullmind/screens/terminos.dart';
import 'package:powerfullmind/screens/quienesSomos.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
       return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        ),
      body:  Padding( 
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ajustes",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                ),
            ),
            SizedBox(height: 30),
            // ListTile(
            //   leading: CircleAvatar(
            //     radius: 30,
            //     backgroundImage: AssetImage("images/perfil.jpg"),
            //   ),
            //   title: Text(
            //     "Nombre ",
            //     style: TextStyle(
            //       fontWeight: FontWeight.w500,
            //       fontSize: 25,
            //     ),
            //   ),
            //   subtitle: Text("Perfil"),
            // ),
            Divider(height: 60),
            ListTile(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute (builder: (context)=> PERFIL(),
              ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
              title: Text("Perfil",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 40),
            ListTile(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute (builder: (context)=> Notificaciones(),
              ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ),
              title: Text("Notificaciones",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 40),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> Pagina2(),
              ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 35,
                ),
              ),
              title: Text("Terminos y Condiciones",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 40),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute (builder: (context)=> QuienesSomos(),
              ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                  
                ),
                child: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.orange,
                  size: 35,
                ),
              ),
              title: Text("Quienes Somos",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 40),
            ListTile(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute (builder: (context)=> Configuracion(),
              ));
              },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.settings,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              title: Text("Configuracion",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            
            Divider(height: 60),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),
              title: Text("Cerrar sesion",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        )
      )
    
    );
  
  }
}