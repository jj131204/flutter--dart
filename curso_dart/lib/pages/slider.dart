import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';



 class Swiper extends StatelessWidget {
  const Swiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("swiper"),
        ),
        body: Container(
          height: 300.0,
          child: CarouselSlider(
  options: CarouselOptions(height: 200.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
        ),
        );
  }
}