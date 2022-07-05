import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class Filter extends StatefulWidget {
  static const routeName = '/filter';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  Filter(this.currentFilters, this.saveFilters);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var _isEnd = false;
  var _isAllAge = false;

  initState() {
    _isEnd = widget.currentFilters['isEnd'];
    _isAllAge = widget.currentFilters['isAllAge'];
    super.initState();
  }

  Widget _buildSwitch(String title, String description, bool currentValue,
      Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("設定"), actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilter = {
                'isEnd': _isEnd,
                'isAllAge': _isAllAge,
              };
              widget.saveFilters(selectedFilter);
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ]),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "漫畫過濾",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                _buildSwitch('完結', '只顯示已完結作品', _isEnd, (newValue) {
                  setState(() {
                    _isEnd = newValue;
                  });
                }),
                _buildSwitch('全年齡', '只顯示全年齡向作品', _isAllAge, (newValue) {
                  setState(() {
                    _isAllAge = newValue;
                  });
                }),
              ],
            ))
          ],
        ));
  }
}
