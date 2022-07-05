import 'package:flutter/foundation.dart';

enum Rank {
  Best,
  Great,
  Good,
  Ok,
  Bad,
  Terrible,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> info;
  final Rank rank;
  final bool isEnd;
  final bool isAllAge;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.info,
    @required this.rank,
    @required this.isEnd,
    @required this.isAllAge,
  });
}
