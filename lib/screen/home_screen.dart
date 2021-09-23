import 'package:flutter/material.dart';

import './products_screen.dart';
import './favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'title': 'Products',
        'page': ProductsScreen(),
      },
      {
        'title': 'Favorite',
        'page': FavoriteScreen(),
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.wallet_giftcard,
              color: Colors.black54,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          _pages[_currentIndex]['title'],
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black54,
            ),
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        selectedItemColor: Colors.white,
        selectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: Color.fromRGBO(34, 87, 122, 1),
              size: 35,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35,
              ),
              label: 'Favorite'),
        ],
      ),
    );
  }
}
