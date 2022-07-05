import 'package:flutter/material.dart';
import "../dummy_data.dart";

class MealDetail extends StatelessWidget {
  static const routeName = "/meal-detail";

  final Function toggle;
  final Function isFavorite;

  MealDetail(this.toggle, this.isFavorite);
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selected = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    final selected_2 = DUMMY_CATEGORIES
        .firstWhere((meal) => meal.id == selected.categories[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(selected.title),
        backgroundColor: selected_2.color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selected.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('簡介', style: Theme.of(context).textTheme.headline6),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 220,
              width: 300,
              child: ListView.builder(
                itemCount: selected.info.length,
                itemBuilder: (ctx, index) {
                  return Card(
                    color: selected_2.color,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selected.info[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(mealId) ? Icons.star : Icons.star_border),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        onPressed: () => toggle(mealId),
      ),
    );
  }
}
