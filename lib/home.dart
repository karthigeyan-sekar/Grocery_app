import 'package:flutter/material.dart';
import 'package:grocery_app/banner.dart';
import 'package:grocery_app/categories.dart';
import 'package:grocery_app/pages/product.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 162, 0),
        title: Text('Grocery app'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerSlider(),
            Category(),
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
