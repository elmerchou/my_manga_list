import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/meal_detail.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Rank rank;
  final bool isEnd;
  final Function remove;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.rank,
    @required this.isEnd,
    @required this.remove,
  });

  String get rankText {
    switch (rank) {
      case Rank.Best:
        return 'Best';
        break;
      case Rank.Great:
        return 'Great';
        break;
      case Rank.Good:
        return 'Good';
        break;
      case Rank.Ok:
        return 'Ok';
        break;
      case Rank.Bad:
        return 'Bad';
        break;
      case Rank.Terrible:
        return 'Terrible';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetail.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        remove(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectMeal(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      width: 300,
                      color: Colors.black45,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_border_purple500_sharp),
                        SizedBox(width: 6),
                        Text(rankText),
                      ],
                    ),
                    isEnd == true
                        ? Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 6),
                              Text("已完結"),
                            ],
                          )
                        : Row(
                            children: [
                              Icon(Icons.clear),
                              SizedBox(width: 6),
                              Text("未完結"),
                            ],
                          )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
