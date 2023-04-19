import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerfullmind/provider/publications_provider.dart';
import 'package:powerfullmind/screens/Publicaciones.dart';
import 'package:powerfullmind/screens/Inicio_screen.dart';
import 'package:powerfullmind/screens/appointment_screen.dart';
import 'package:powerfullmind/screens/settings_screen.dart';
import 'package:powerfullmind/screens/text_title_page.dart';

class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screens = [
    //inicio screen
    inicio(),
    // //Mensages screen
    // Container(),
    //Posteos screen
    MyPanel(),
    // MyApp(),
    //Ajustes Screen
    SettingsScreen(),
    

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
       body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(151, 83, 214, 1),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_rounded),
            label: "Publicaciones",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: "Ajustes",
            ),
          ],
        ),
      )
    );
  }
}