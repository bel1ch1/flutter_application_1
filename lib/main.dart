import 'package:flutter/material.dart';
import 'screens/home_screen.dart';  // Импорт главной страницы

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: HomeScreen(), // Установка HomeScreen как домашнего экрана
    );
  }
}
