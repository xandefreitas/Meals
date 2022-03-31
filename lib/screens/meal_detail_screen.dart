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
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, i) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(meal.ingredients[i]),
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
