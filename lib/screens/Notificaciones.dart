import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notificaciones extends StatefulWidget {
  const Notificaciones({super.key});

  @override
  State<Notificaciones> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<Notificaciones> {
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
        //   // icon: Icon(
        //   //   Icons.arrow_back,
        //   //   color: Color.fromRGBO(151, 83, 214, 1),
        //   // ),
        // ),
      ),
      body: Container(
         padding: EdgeInsets.only(
          left: 16, 
          top: 25, 
          right: 16),
          child:  ListView(
            children: [
               SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                 color: Color.fromRGBO(151, 83, 214, 1),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notificaciones",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("New for you", true),
            buildNotificationOptionRow("Account activity", true),
            buildNotificationOptionRow("Opportunity",false),

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
                  child: Text("Cerrar", 
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

   Row buildNotificationOptionRow( String title, bool isActive) {
    return Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(title, 
            style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w500, 
              color: Colors.grey[600]
            ),
            ),
            Transform.scale
            (
              scale: 0.7,
              child: CupertinoSwitch(
              value: true, 
              onChanged: (bool val) {},
              ),
              ), 
          ],);
  }
}