import 'package:curso_dart/pages/botton-pages/paginaFavoritos.dart';
import 'package:curso_dart/pages/botton-pages/paginaHome.dart';
import 'package:curso_dart/pages/botton-pages/paginaUsers.dart';
import  'package:flutter/material.dart';

class BottonNavigator extends StatefulWidget {
  const BottonNavigator({super.key});

  @override
  State<BottonNavigator> createState() => _BottonNavigatorState();
}

class _BottonNavigatorState extends State<BottonNavigator> {

  int _paginaActual = 0;
  List<Widget>  _paginas  = [
    paginaHome(),
    paginaUsers(),
    paginaFavoritos(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("botton-navigator")
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            
           backgroundColor: Color(0xfff0f4fb),
          
            onTap: (index){
              setState(() {
                _paginaActual = index;
                print(index);
              });
            },

            currentIndex: _paginaActual,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home ),
                label: "home"
                //'test', styles: TextStyle(fontSize: 30.0),
                
                
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







