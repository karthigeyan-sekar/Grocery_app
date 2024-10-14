import 'package:flutter/material.dart';

import '../product_details.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Carrot',
      'price': 30.0,
      'image': 'https://images.unsplash.com/photo-1576181256399-834e3b3a49bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnJvdHxlbnwwfHwwfHx8MA%3D%3D'
    },
    {
      'name': 'Appple',
      'price': 60.0,
      'image': 'https://media.istockphoto.com/id/185262648/photo/red-apple-with-leaf-isolated-on-white-background.webp?b=1&s=170667a&w=0&k=20&c=wbm2rjFuYpgQewyfKF2bGMrxTReYgwoKXMC7BRdXC54='
    },
    {
      'name': 'Milk',
      'price': 45.0,
      'image': 'https://media.istockphoto.com/id/528296022/photo/milk-carton-with-clipping-path.webp?b=1&s=170667a&w=0&k=20&c=m2g5cQsmxcAenUtjfHi2JN8Mf7RN-XbImkQklhoA2No='
    },
    {
      'name': 'Meat',
      'price': 160.0,
      'image': 'https://media.istockphoto.com/id/1162717440/photo/pile-of-beef-cubes-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=9-CPrCj9bhs-4psJA1aE9C78IOTk7UPpQuo2iG5zL8o='
    },
    {
      'name': 'Pringles',
      'price': 100.0,
      'image': 'https://images.unsplash.com/photo-1700339062616-11c7fc9a673d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHByaW5nbGVzfGVufDB8fDB8fHww'
    },
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailPage(),
        ),
      );
    },
          child: Column(
            children: [
              Image.network(product['image'], height: 100, width: 100),
              Text(product['name']),
              Text('\₹${product['price']}'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ),
        );
      },
    );
  }
}
