// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.profile);
          },
          child: Text('Go to Profile Screen'),
        ),
      ),
    );
  }
}
