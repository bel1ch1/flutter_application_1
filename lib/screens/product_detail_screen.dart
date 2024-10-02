import 'package:flutter/material.dart';
import '../models/product.dart'; // Импорт модели продукта

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Изображение товара
            Center(
              child: Image.network(
                product.imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            // Название товара
            Text(
              product.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Цена товара
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 20),
            // Описание товара (можно дополнить)
            Text(
              'TextTextTextTextTextTextTextTextTextTextTextTextTextTextText',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
