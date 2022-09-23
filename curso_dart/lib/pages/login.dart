import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
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
        title: Text("Login", style: TextStyle( color: Color(0xff000000))),

        backgroundColor: Color(0xfff0bf04),
        
        
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://m.media-amazon.com/images/I/514XW-fhKSL._AC_SY355_.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nombre(),
            SizedBox(height: 10.0,),
            campoUsuario(),
            SizedBox(height: 10.0,),
            campoContrasena(),
            // espacio
            SizedBox(height: 15.0,),
            //boton()]),
          ])));
}

Widget nombre() {
  return Text("Iniciar sesión",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40.0,
        fontFamily: 'Times New Roman'
      ));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}
Widget boton() {

  return ElevatedButton(
    onPressed: () {
      
    },
    child: Text(
      "continuar",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}