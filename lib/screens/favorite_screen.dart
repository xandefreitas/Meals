import 'package:flutter/material.dart';
import 'package:flutter_meals/components/meal_item.dart';
import 'package:flutter_meals/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavoriteScreen({Key? key, required this.favoriteMeals}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return favoriteMeals.isEmpty
        ? Center(
            child: Text('Nenhuma refeição foi marcada como favorita!'),
          )
        : ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (ctx, i) {
              return MealItem(meal: favoriteMeals[i]);
            },
          );
  }
}
