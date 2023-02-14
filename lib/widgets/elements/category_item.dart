import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/widgets/pages/category_meals_page.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: category.color,
      onTap: () {
        selectCategory(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.4), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          category.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealsPage.route,
        arguments: {'category' : category}
    );
  }
}
