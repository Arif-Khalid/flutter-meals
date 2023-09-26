import 'package:flutter/material.dart';
import 'package:meals/main.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_list_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(this.meals, this.title, {super.key});

  final List<Meal> meals;
  final String title;
  @override
  Widget build(BuildContext context) {
    Widget content;
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealListItem(
          meals[index],
          key: ValueKey(meals[index].id),
        ),
      );
    } else {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh ... nothin here!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'Try selecting a different category!',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
