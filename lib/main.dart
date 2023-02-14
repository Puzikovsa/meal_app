import 'package:flutter/material.dart';
import 'package:meal_app/widgets/pages/category_meals_page.dart';
import 'package:meal_app/widgets/pages/category_page.dart';

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
        primarySwatch: Colors.pink,
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
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CategoryPage(),
        CategoryMealsPage.route : (context) => const CategoryMealsPage(),
      },
    );
  }
}
