import 'package:curso_dart/pages/botton-pages/paginaFavoritos.dart';
import 'package:curso_dart/pages/botton-pages/content_animated.dart';
import 'package:curso_dart/pages/botton-pages/paginaUsers.dart';
import 'package:flutter/material.dart';

class BottonNavigator extends StatefulWidget {
  const BottonNavigator({super.key});

  @override
  State<BottonNavigator> createState() => _BottonNavigatorState();
}

class _BottonNavigatorState extends State<BottonNavigator> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    content_animated(),
    paginaUsers(),
    paginaFavoritos()
  ];

  List<Widget> _titulos = [
   Text("Container animado"),
   Text("Users"),
   Text("Favoritos")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titulos[_paginaActual],
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        
        //backgroundColor: Color(0xfff0f4fb),
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual, // Sirve para subrayar el icono seleccionado
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste_go),
            label: "container Animated"
              //'test', styles: TextStyle(fontSize: 30.067),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "Users",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }
}
