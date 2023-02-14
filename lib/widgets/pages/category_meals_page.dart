import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/models/category.dart';
import '../elements/short_meal.dart';

class CategoryMealsPage extends StatefulWidget {

   const CategoryMealsPage({super.key});

   static const String route = '/categoryMeals';

  @override
  CategoryMealsPageState createState() => CategoryMealsPageState();
}

class CategoryMealsPageState extends State<CategoryMealsPage> {
  late Category category;

  @override
  Widget build(BuildContext context) {

    final routArgs = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    category = routArgs['category'];

    final meals = MockData.getMeals.where((meal) =>
        meal.categories.contains(category.id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title,
        style: Theme.of(context).textTheme.headline1,),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) =>
        ShortMeal(
          meal: meals[index],
        ),
      ),
    );
  }
}
