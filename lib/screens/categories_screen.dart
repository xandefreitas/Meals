import 'package:flutter/material.dart';
import 'package:flutter_meals/components/category_item.dart';
import 'package:flutter_meals/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
      ),
      children: DUMMY_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
    );
  }
}
