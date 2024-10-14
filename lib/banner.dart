import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D'
    'https://images.unsplash.com/photo-1488459716781-31db52582fe9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGZydWl0c3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1582119702840-b7e1213c349e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM5fHxncm9jZXJ5JTIwc3RvcmV8ZW58MHx8MHx8fDA%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: false,
        enlargeCenterPage: true,
      ),
      items: imgList.map((item) => Center(
        child: Image.network(item, fit: BoxFit.cover, width: 1000),
      )).toList(),
    );
  }
}
