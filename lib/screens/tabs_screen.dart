import 'package:flutter/material.dart';
import 'package:flutter_meals/screens/categories_screen.dart';
import 'package:flutter_meals/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Widget> _screens = const [
    CategoriesScreen(),
    FavoriteScreen(),
  ];
  final List<String> _titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedScreenIndex]),
        centerTitle: true,
      ),
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) => _selectScreen(i),
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categorias'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
        ],
      ),
    );
  }
}
