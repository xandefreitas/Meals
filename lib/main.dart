import 'package:flutter/material.dart';
import 'package:flutter_meals/screens/categories_meals_screen.dart';
import 'package:flutter_meals/screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Meals',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: const CategoriesScreen(),
      routes: {
        '/categoriesMeals': (ctx) => const CategoriesMealsScreen(),
      },
    );
  }
}
