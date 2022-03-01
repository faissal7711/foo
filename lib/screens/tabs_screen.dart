import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favorites.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _page = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': Favorites(),
      'title': 'Favorites',
    },
  ];
  int _selectPageIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_page[_selectPageIndex]['title']),
      ),
      body: _page[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).canvasColor,
        unselectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('favorites'),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
