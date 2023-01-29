import 'package:flutter/material.dart';
import 'package:test1/pages/discoverPage.dart';
import 'package:test1/pages/mainPage.dart';

class ButtonNavigatorBar extends StatelessWidget {
  const ButtonNavigatorBar({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(left: 50.0),
              child: IconButton(
                onPressed: (() {
                  Navigator.pushNamed(context, MainPage.routeName);
                }),
                // ignore: prefer_const_constructors
                icon: Icon(Icons.home),
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (() {
                Navigator.pushNamed(context, DiscoverPage.routeName);
              }),
              icon: Icon(Icons.search),
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(right: 50.0),
              child: IconButton(
                onPressed: (() {
                  // ignore: avoid_print
                 
                }),
                icon: Icon(Icons.person),
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}
