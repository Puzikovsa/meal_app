import 'package:flutter/material.dart';
import 'package:meal_app/widgets/elements/category_item.dart';
import '../../data.dart';

class CategoryPage extends StatelessWidget {
   const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: MockData.getCategories
          .map((category) => CategoryItem(category: category))
          .toList(),
    );
  }
}
