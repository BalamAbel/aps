import 'package:flutter/material.dart';
import 'package:powerfullmind/main.dart';
import 'package:powerfullmind/screens/Inicio_screen.dart';
import 'package:powerfullmind/screens/text_title_page.dart';
import 'package:powerfullmind/provider/publications_provider.dart';
import 'package:powerfullmind/widgets/navbar_roots.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            'Powerfullmind',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Image.asset('images/foto3.jpg'),
    SizedBox(height: 50),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Buscamos inspirar a mujeres para que puedan alcanzar su mejor versión de sí mismas',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        
      ],
    ),
    SizedBox(height: 30),
    TextButton(
      onPressed: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => 
NavBarRoots(), 
          ));
      },
      child: Text("Continuar"),
    
      style: TextButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    SizedBox(
      height: 20,
    ),
  ],
),
            ],
          ),
        ),
      ),
    );
  }
}
