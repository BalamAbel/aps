import 'package:flutter/material.dart'; 
import 'package:powerfullmind/screens/settings_screen.dart';


class QuienesSomos extends StatelessWidget {
  const QuienesSomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        title: Text("¿Quienes somos?", 
        style: TextStyle(fontSize: 26, fontWeight: 
        FontWeight.bold,),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Vsion general", 
        style: TextStyle(fontSize: 28, fontWeight: 
        FontWeight.bold),),
         SizedBox(height: 15,),
         Text("Todo cambio externo siempre viene desde el interior, es por ello que con powerful minds buscamos inspirar a mujeres para que puedan alcanzar su mejor versión de sí mismas. ",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
            Text("¿Quienes somos?", 
        style: TextStyle(fontSize: 28, fontWeight: 
        FontWeight.bold),),
         SizedBox(height: 15,),
            Text("Somos un grupo de estudiantes que buscamos brindarle una herramienta efectiva, segura y grattuita a las mujeres que no estan pasando por una buena situacion  ",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             Text("Somos un grupo de estudiantes que buscamos brindarle una herramienta efectiva, segura y grattuita a las mujeres que no estan pasando por una buena situacion  ",
             style: TextStyle(fontSize:20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
              Text("Objetivo", 
        style: TextStyle(fontSize: 28, fontWeight: 
        FontWeight.bold),),
        Text(" Mejorar la situación de mujeres que sufren problemas a causa de diversas situación mediante una aplicación para encontrar ayuda profesional de manera gratuita y por otra parte impulsar a mujeres psicólogas en el mundo laboral, todo esto mediante una aplicación que servirá como intermediaria para el paciente busque ayuda psicológica.",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
           
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
                  child: Text("Aceptar", 
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
          ]
                  ),
      ),
                  );
  }
}