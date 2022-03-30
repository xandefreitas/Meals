import 'package:flutter/material.dart';
import 'package:flutter_meals/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
