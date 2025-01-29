import 'package:_6_meals_app/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItems extends StatelessWidget {
  const MealsItems({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
