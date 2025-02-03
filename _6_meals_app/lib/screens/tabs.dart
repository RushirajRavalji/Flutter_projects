import 'package:_6_meals_app/screens/categories.dart';
import 'package:_6_meals_app/screens/meals.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
int _selectedPageIndex = 0;

void _selectPage(int index){
  setState(() {
    _selectedPageIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
Widget activePage = const CategoriesScreen();
if(_selectedPageIndex == 1){
  activePage = MealsScreen(title: 'Favourites', meals: [],);
}

    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic..'),
      ),
      body: ,
      bottomNavigationBar: BottomNavigationBar( 
      onTap: _selectPage,
      items:const [
        BottomNavigationBarItem(icon: Icon(Icons.set_meal), label:'Categories' ),
        BottomNavigationBarItem(icon: Icon(Icons.star), label:'Favourite' ),
      ],),
    );
  }
}
