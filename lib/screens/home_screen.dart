import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(title: 'Product 1', imageUrl: 'https://via.placeholder.com/150', price: 29.99),
    Product(title: 'Product 2', imageUrl: 'https://via.placeholder.com/150', price: 19.99),
    Product(title: 'Product 3', imageUrl: 'https://via.placeholder.com/150', price: 39.99),
    Product(title: 'Product 4', imageUrl: 'https://via.placeholder.com/150', price: 49.99),
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                cart.itemCount.toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
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
