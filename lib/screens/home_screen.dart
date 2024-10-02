import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(title: 'Product 1', imageUrl: 'https://via.placeholder.com/150', price: 29.99),
    Product(title: 'Product 2', imageUrl: 'https://via.placeholder.com/150', price: 19.99),
    Product(title: 'Product 3', imageUrl: 'https://via.placeholder.com/150', price: 39.99),
    Product(title: 'Product 4', imageUrl: 'https://via.placeholder.com/150', price: 49.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2 / 3,
          ),
          itemCount: products.length,
          itemBuilder: (ctx, i) => ProductCard(product: products[i]),
        ),
      ),
    );
  }
}
