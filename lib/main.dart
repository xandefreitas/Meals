import 'package:flutter/material.dart';
import 'package:flutter_meals/screens/categories_meals_screen.dart';
import 'package:flutter_meals/screens/categories_screen.dart';
import 'package:flutter_meals/screens/meal_detail_screen.dart';
import 'package:flutter_meals/screens/settings_screen.dart';
import 'package:flutter_meals/screens/tabs_screen.dart';
import 'package:flutter_meals/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                color: Colors.black,
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => const SettingsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/rota') {
          return null;
        } else if (settings.name == '/rota_alternativa') {
          return null;
        } else {
          return MaterialPageRoute(builder: (_) => const CategoriesScreen());
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      },
    );
  }
}
