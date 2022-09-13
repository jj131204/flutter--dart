import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  
  bool _ingresar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff005fae),
              shadowColor: Color(0xfff0f4fb),
            ),
            child: Text(
              "Subscribete",
              style: TextStyle(fontSize: 15.0),
            ),
            onPressed: () {
              print("funciona");
              _mostrarAlerta(context);
            },
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            _ingresar ? "Subscrito" : "No subscrito",
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      )),
    );
  }

  // nueva funcion
  void _mostrarAlerta(BuildContext context) {
    showDialog(
        // barrierDismissible: false, evita que se quite el mensaje de alerta cuando le dan click por fuera
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              _ingresar ? "Cancelar subscripción" : "Subscribete"),
            content: Text(
              _ingresar ? "¿Estas seguro que quieres cancelar tu subscripción?" : "Presiona 'si quiero' para subscribirte"),
            actions: [
              TextButton(
                child: Text("cancelar"),
                onPressed: () {
                  print("NO");

                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: Text("Si quiero"),
                onPressed: () {
                  print("si");

                  // 
                  setState(() {
                    _ingresar = !_ingresar;
                  });

                  /*setState(){
                _ingresar = true;
              }
              No funciona!!!!!! :c corregir
              */

                  print(_ingresar);

                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

}
