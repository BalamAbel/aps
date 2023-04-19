import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Whats extends StatelessWidget {
  const Whats({super.key});


  @override
  Widget build(BuildContext context) {
    String whatsMess = "Hola+%C2%A1Agenda+aqu%C3%AD+tu+cita%21";
  String tel = "529991371125";
  String urlA = "whatsapp://send/?phone=$tel&text=$whatsMess";
      launchUrl(Uri.parse(urlA));
  // void sendWatss(){
    
  // }
    return MaterialApp(
    //     home: Scaffold(
    //   body: Center(
    //       child: ElevatedButton(
    //     onPressed: () => sendWatss(),
    //     child: Text('Agendar'),
    //   )),
    // )
    );
  }
}