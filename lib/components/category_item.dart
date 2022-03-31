import 'package:flutter/material.dart';
import 'package:flutter_meals/models/category.dart';
import 'package:flutter_meals/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({Key? key, required this.category}) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        onTap: () => _selectCategory(context),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.5),
                category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
