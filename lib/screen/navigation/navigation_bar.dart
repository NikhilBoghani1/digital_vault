import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    if (index != 1) {
      // Prevents the center button from being counted as a tab
      setState(() {
        _selectedIndex = index;
      });
    } else {
      // Handle what happens when the plus button is pressed
      print('Plus button pressed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomAppBar(
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     // IconButton(
              //     //   icon: Icon(CupertinoIcons.home),
              //     //   selectedIcon: Image.asset("assets/images/home.png"),
              //     //   onPressed: () => _onItemTapped(0),
              //     //   color: _selectedIndex == 0 ? Colors.teal[800] : Colors.grey,
              //     // ),
              //     // IconButton(
              //     //   icon: Icon(Icons.person),
              //     //   onPressed: () => _onItemTapped(2),
              //     //   color: _selectedIndex == 2 ? Colors.teal[800] : Colors.grey,
              //     // ),
              //   ],
              // ),
              ),
        ),
      ),
    );
  }
}
