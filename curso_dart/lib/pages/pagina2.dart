import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Términos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Términos y condiciones",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            // Espacion entre titulo y letras
            SizedBox(height: 20.0,),
            Text("Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.",
            style: TextStyle(
                fontSize: 14.0,
              ), textAlign: TextAlign.justify,),
            Text("Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.",
            style: TextStyle(
                fontSize: 14.0,
              ), textAlign: TextAlign.justify,),
            Text("Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.Para usar esta aplicación es necesario que acepte los terminos y condiciones.",
            style: TextStyle(
                fontSize: 14.0,
              ), textAlign: TextAlign.justify,),
                // Espacion entre titulo y letras
            SizedBox(height: 20.0,),
              ElevatedButton(
                //padding: EdgeInsets.all(15.0),
                //color: Colors.blue,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Acepto", style: TextStyle(
                    color: Colors.white,

                  ),),
                  Icon(Icons.arrow_forward_ios),
                ],
                ),
                onPressed:()=>{

                  Navigator.pop(context)
              })
          ],
        ),
      ),
    );
  }
}