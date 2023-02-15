import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/meal.dart';

class MockData {

  static final List<Meal> _favouriteMeals = [];
  static bool isGlutenFree = false;
  static bool isLactoseFree = false;
  static bool isVegetarian = false;
  static bool isVegan = false;

  static List<Category> get getCategories => [
        const Category(id: '01', title: 'Легкая', color: Colors.green),
        const Category(id: '02', title: 'Итальянская', color: Colors.lime),
        const Category(id: '03', title: 'Азиатская', color: Colors.pink),
        const Category(id: '04', title: 'Французская', color: Colors.blue),
        const Category(id: '05', title: 'Вегетарианская', color: Colors.yellow),
        const Category(id: '06', title: 'Веганская', color: Colors.tealAccent),
        const Category(id: '07', title: 'Вьетнамская', color: Colors.deepPurple),
        const Category(id: '08', title: 'Японская', color: Colors.amber),
      ];

  static List<Meal> get getMeals => [
        Meal(
          id: '01',
          title: 'Спагетти с томатным соусом',
          imageURL:
              'https://eda.ru/img/eda/c620x415/s1.eda.ru/StaticContent/Photos/120213182322/120213182408/p_O.jpg',
          ingredients: [
            '4 томата',
            'столовая ложка оливкового масла',
            '1 луковица',
            '250 грамм спагетти',
            'специи'
          ],
          steps: [],
          duration: 20,
          complexity: Complexity.simple,
          availability: Availability.affordable,
          isGlutenFree: false,
          isLactoseFree: false,
          isVegetarian: true,
          isVegan: true,
          categories: [
            '02',
            '01',
            '05'
          ],
        ),
    Meal(id: '02',
        title: 'Пицца с помидорами',
        imageURL: 'https://eda.ru/img/eda/c620x415/s1.eda.ru/StaticContent/Photos/140902214744/140911022321/p_O.jpg',
        ingredients: [
          'Мука - 150 грамм',
          '8 маленьких томатов',
          '1 столовая ложка оливкового масла',
          'Сыр моцарелла',

        ],
        steps: [],
        duration: 40,
        complexity: Complexity.difficult,
        availability: Availability.affordable,
        isGlutenFree: false,
        isLactoseFree: false,
        isVegetarian: true,
        isVegan: false,
        categories: [
          '01',
          '02',
          '05',
          '04',
        ])
      ];

  static List<Meal> get favouriteMeals => _favouriteMeals;


}
