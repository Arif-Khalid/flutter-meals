import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealListItem extends StatelessWidget {
  const MealListItem(this.meal, {super.key});

  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        meal.title,
      ),
    );
  }
}
