import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widgets/elements/short_meal.dart';

class FavouriteMealsPage extends StatelessWidget{
  const FavouriteMealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MockData.favouriteMeals.isEmpty) {
      return const Center(
        child: Text('У Вас нет избранных блюд'),
      );
    }
    else {
      return ListView.builder(itemBuilder: (context, index) =>
          ShortMeal(meal: MockData.favouriteMeals[index])
      );
    }
  }
}