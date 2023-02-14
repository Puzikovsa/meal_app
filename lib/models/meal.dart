enum Complexity{
  simple,
  hard,
  difficult,
}

enum Availability{
  affordable,
  pricey,
  luxurious,
}

class Meal{
  final String id;
  final String title;
  final String imageURL;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Availability availability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  final bool isVegan;
  final List<String> categories;

  Meal({
  required this.id,
  required this.title,
  required this.imageURL,
  required this.ingredients,
  required this.steps,
  required this.duration,
  required this.complexity,
  required this.availability,
  required this.isGlutenFree,
  required this.isLactoseFree,
  required this.isVegetarian,
  required this.isVegan,
  required this.categories
  });

  String get getAvailability{
    switch(availability){
      case Availability.affordable:
        return 'Не дорогое';
      case Availability.pricey:
        return 'Среднее';
      case Availability.luxurious:
       return 'Дорогое';
      default:
        return '';
    }
  }

  String get getComplexity{
    switch(complexity){
      case Complexity.simple:
        return 'Простое';
      case Complexity.difficult:
        return 'Среднее';
      case Complexity.hard:
        return 'Сложное';
      default:
        return '';
    }
  }
}