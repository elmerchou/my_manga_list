import 'package:flutter/material.dart';

class CategoryInner {
  final String id;
  final String title;
  final Color color;

  const CategoryInner({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
