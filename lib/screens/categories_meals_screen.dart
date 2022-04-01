import 'package:flutter/material.dart';
import 'package:flutter_meals/components/meal_item.dart';
import 'package:flutter_meals/models/category.dart';
import 'package:flutter_meals/models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsScreen({Key? key, required this.meals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = meals.where((meal) => meal.categories.contains(category.id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, i) {
          return MealItem(meal: categoryMeals[i]);
        },
      ),
    );
  }
}
