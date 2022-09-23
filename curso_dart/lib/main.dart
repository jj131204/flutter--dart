import 'package:curso_dart/pages/classes.dart';
import 'package:curso_dart/pages/alertDialog.dart';
import 'package:curso_dart/pages/botton-navigator.dart';
import 'package:curso_dart/pages/buttons.dart';
import 'package:curso_dart/pages/login.dart';
import 'package:curso_dart/pages/pagina2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "pagina principal",
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("botones de las diferentes clases"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),

            
            ElevatedButton(
              child:Text("Botton"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Pagina2())
              )
            }),
            
            SizedBox(height: 15.0,),

            Text("AlertDialog"),
            ElevatedButton(
              child:Text("alertDialog"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Alert())
              )
            }),

            SizedBox(height: 15.0,),

            Text("login"),
            ElevatedButton(
              child:Text("Botton"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Login())
              )
            }),
            SizedBox(height: 15.0,),
            
            Text("botones"),
            ElevatedButton(
              child:Text("Botton"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Buttons())
              )
            }),

            SizedBox(height: 15.0,),
            
            Text("botton-navigator"),
            ElevatedButton(
              child:Text("botton-navigator"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>  BottonNavigator())
              )
            }),
     
            

            SizedBox(height: 15.0,),
            
            Text("Consumir APis"),
            ElevatedButton(
              child:Text("Consumir APis"),
              onPressed: ()=>{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>  Apis())
              )
            }),
          ],
        ),
      )
    );
  }
}
