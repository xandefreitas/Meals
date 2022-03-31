import 'package:flutter/material.dart';
import 'package:flutter_meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text('Detalhes da Refeição'),
      ),
    );
  }
}
