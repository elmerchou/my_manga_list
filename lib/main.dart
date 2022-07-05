import 'package:flutter/material.dart';
import './screens/filter.dart';
import './screens/tabs_screen.dart';
import './screens/category.dart';
import './screens/category_meals.dart';
import './screens/meal_detail.dart';
import './dummy_data.dart';
import './models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'isEnd': false,
    'isAllAge': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['isEnd'] && !meal.isEnd) {
          return false;
        }
        if (_filters['isAllAge'] && !meal.isAllAge) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String Id) {
    final existingIndex =
        _favoriteMeals.indexWhere((element) => element.id == Id);

    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals
            .add(DUMMY_MEALS.firstWhere((element) => element.id == Id));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoriteMeals.any((element) => element.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'NotoSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 22,
              ),
            ),
      ),
      // home: Category(),
      routes: {
        '/': (context) => TabScreen(_favoriteMeals),
        CategoryMeals.routeName: (_) => CategoryMeals(_availableMeals),
        MealDetail.routeName: (ctx) => MealDetail(_toggleFavorite, _isFavorite),
        Filter.routeName: (ctx) => Filter(_filters, _setFilters),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(
      //     builder: (ctx) => Category(),
      //   );
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Category(),
        );
      },
    );
  }
}
