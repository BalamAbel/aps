import 'package:flutter/material.dart';
import 'package:powerfullmind/screens/login_screen.dart';
import 'package:powerfullmind/widgets/navbar_roots.dart';
import 'package:powerfullmind/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
           backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        ),
        body:  Padding(
        padding: const EdgeInsets.all(20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(alignment: Alignment.centerRight,
            // child: TextButton(
            //   onPressed: () {
            //   Navigator.push(context, MaterialPageRoute(
            //     builder: (context) => NavBarRoots() 
            //     ));
            //   },
            //   child: Text("SKIP",
            //   style: TextStyle(
            //     color: Color(0xFF7165D6),
            //     fontSize: 25,
            //   ),
            //   ),
            //   ),
            ),
            // SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(20),
            child: Image.asset('images/POWER_LOGO.png'),
            ),
            // SizedBox(height: 30),
            Text(
              "POWERFULMIND",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                // letterSpacing: 1,
                // wordSpacing: 2,
                
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Empieza ahora!",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w500,
                
              ),
            ),
            SizedBox(height: 60),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromRGBO(151, 83, 214, 1),
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginScreen(),
                ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 55),
                  child: Text("Iniciar Sesion", 
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),
                  ),
                ),
                SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color.fromRGBO(151, 83, 214, 1),
                  borderRadius: BorderRadius.circular(40),
                  child: InkWell(
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 60),
                  child: Text("Registrarse", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),),
                  ),
                  ),
                ),
              ]
            )

              ],
            )
          ],
        ),
      ),
        )
    );
  }
}