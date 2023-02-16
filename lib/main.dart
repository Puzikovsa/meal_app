import 'package:flutter/material.dart';
import 'package:meal_app/widgets/pages/category_meals_page.dart';
import 'package:meal_app/widgets/pages/filter_page.dart';
import 'package:meal_app/widgets/pages/meal_detail_page.dart';
import 'package:meal_app/widgets/pages/tab_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
          colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          ),
          textTheme: const TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.white,
          ),
            headline2: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
              headline3: TextStyle(
                fontSize: 18,
                color: Colors.white,
            ),
            headline4: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TabPage(),
        CategoryMealsPage.route : (context) => const CategoryMealsPage(),
        FilterPage.route: (context) => const FilterPage(),
        MealDetailPage.route: (context) => const MealDetailPage(),
      },
    );
  }
}
