import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final List<String> categories = ['Fruits', 'Vegetables', 'Snacks', 'Dairy', 'Drinks','Meats'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: Chip(
              label: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}
