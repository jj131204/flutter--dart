import 'package:flutter/material.dart';



class Buttons extends StatelessWidget {
  const  Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "row, column and button",
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
          title: Text("Mi primera App3"),
        ),
        body:  Center(
          child: ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.access_time),
                Text("button")
              ],
            ),
            onPressed: (){
              var time = DateTime.now();
              print(time);
              
            }
          ),
        )
        /* Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            //padding: EdgeInsets.all(1.0),
            child: Image.network(
                "data:image/jpeg;base64,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"),
          ),
          Text("¿hola como estas?"),
          Text("¿muy bien y tu"),
          Text("muy bien gracias por preguntar"),
        

        ])*/
        );
  }
}

