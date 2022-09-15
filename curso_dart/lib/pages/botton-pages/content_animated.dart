import 'dart:math';
import 'package:flutter/material.dart';


class content_animated extends StatefulWidget {
  const content_animated({super.key});

  @override
  State<content_animated> createState() => _paginaHomeState();
}

class _paginaHomeState extends State<content_animated> {
  
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadius _border_radius = BorderRadius.circular(10);

  void _cambiarContainer(){

    final random = Random();

    _width = random.nextInt(350).toDouble();
    _height = random.nextInt(350).toDouble();
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _border_radius = BorderRadius.circular(random.nextInt(20).toDouble());
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {            
    return  Column(
      children: [
        Expanded(
          child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOutExpo,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _border_radius,
            ),
          ),
        ),
        ),
        ElevatedButton(
        child: Text('Cambiar container'),
        onPressed: _cambiarContainer,
        )
      ],
    
    );
  }
}