import 'package:flutter/material.dart';
import 'product.dart'; // Импорт модели продукта

class Cart with ChangeNotifier {
  final Map<String, Product> _items = {};

  Map<String, Product> get items {
    return {..._items};
  }

  // Метод для добавления товара в корзину
  void addItem(Product product) {
    _items.putIfAbsent(product.title, () => product);
    notifyListeners(); // Уведомляем, что состояние изменилось
  }

  // Метод для удаления товара из корзины
  void removeItem(String title) {
    _items.remove(title);
    notifyListeners();
  }

  // Получение количества товаров в корзине
  int get itemCount {
    return _items.length;
  }
}
