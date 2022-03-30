import 'package:flutter/material.dart';
import 'package:flutter_meals/screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CategoriesScreen(),
    );
  }
}
