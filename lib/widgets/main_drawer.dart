import 'package:flutter/material.dart';
import '../screens/filter.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.book_rounded, size: 30),
          title: Text('漫畫',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              )),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings, size: 30),
          title: Text('設定',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              )),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(Filter.routeName);
          },
        ),
      ]),
    );
  }
}
