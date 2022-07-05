import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteList;

  Favorites(this.favoriteList);

  @override
  Widget build(BuildContext context) {
    if (favoriteList.isEmpty) {
      return Center(
        child: Text('最愛列表還是空的，快把你最喜歡的漫畫加進來吧！'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteList[index].id,
            title: favoriteList[index].title,
            imageUrl: favoriteList[index].imageUrl,
            rank: favoriteList[index].rank,
            isEnd: favoriteList[index].isEnd,
          );
        },
        itemCount: favoriteList.length,
      );
    }
  }
}
