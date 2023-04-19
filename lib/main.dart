import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/Inicio_screen.dart';
import 'package:powerfullmind/screens/page_one.dart';
import 'package:powerfullmind/screens/welcome_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      // home: PageOne(),
      // home: inicio(),
    );
  }
}
