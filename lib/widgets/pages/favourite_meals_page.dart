import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widgets/elements/short_meal.dart';

class FavouriteMealsPage extends StatefulWidget {
  const FavouriteMealsPage({super.key});

  @override
  State<FavouriteMealsPage> createState() => _FavouriteMealsPageState();
}

class _FavouriteMealsPageState extends State<FavouriteMealsPage> {
  @override
  Widget build(BuildContext context) {
    if (MockData.favouriteMeals.isEmpty) {
      return const Center(
          child: Text(
        'У Вас пока нет избранных блюд\n Время добавить новое!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ));
    } else {
      return ListView.builder(
          itemCount: MockData.favouriteMeals.length,
          itemBuilder: (context, index) =>
              ShortMeal(meal: MockData.favouriteMeals[index]),
      );
    }
  }
}
