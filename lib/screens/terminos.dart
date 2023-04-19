
import 'package:flutter/material.dart'; 

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(151, 83, 214, 1),
        title: Text("Terminos Y Condiciones", 
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),),
        ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
        //     Text("Terminos y Condiciones", 
        // style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        //  SizedBox(height: 15,),
            Text("Al utilizar nuestra aplicación móvil, usted acepta los siguientes términos y condiciones de uso: ",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
           Text("Propiedad y Operación",
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
              Text("Nuestra aplicación móvil es propiedad y está operada por Powerfulmind. Son propiedad de Carrillo Cruz Alondra , Poot Hoil Dalia y Puc Barrera Angel.",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Uso de la Aplicación",
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             Text("La aplicación móvil es para uso personal y no comercial. Usted no puede utilizar la aplicación móvil con fines comerciales sin nuestro consentimiento. Usted no puede utilizar la aplicación móvil para enviar mensajes no solicitados o para realizar actividades ilegales.",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Cambios en los Términos y Condiciones",
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             Text("Nos reservamos el derecho de cambiar estos términos y condiciones en cualquier momento sin previo aviso. Es su responsabilidad revisar regularmente estos términos y condiciones para estar al tanto de cualquier cambio.",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
             Text("Ley Aplicable",
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             Text("Estos términos y condiciones se rigen por las leyes del país en el que está ubicado Powerfulmind. Cualquier disputa que surja en relación con estos términos y condiciones se resolverá mediante arbitraje de conformidad con las normas de México. ",
             style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
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
        
      )
  
      ),
    );
  }
}