import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class ShortMeal extends StatelessWidget {
  final Meal meal;

  const ShortMeal({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: switchToMeal(),
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                 ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(meal.imageURL,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 25,
                  right: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black45,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      meal.title,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const VerticalDivider(
                        color: Colors.transparent,
                        width: 5,
                      ),
                      Text('${meal.duration} мин.'),
                      const VerticalDivider(
                        color: Colors.transparent,
                        width: 25,
                      ),
                      const Icon(Icons.work),
                      const VerticalDivider(
                        color: Colors.transparent,
                        width: 5,
                      ),
                      Text(meal.getComplexity),
                      const VerticalDivider(
                        color: Colors.transparent,
                        width: 25,
                      ),
                      const Icon(Icons.attach_money),
                      const VerticalDivider(
                        color: Colors.transparent,
                        width: 5,
                      ),
                      Text(meal.getAvailability),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  switchToMeal() {}
}
