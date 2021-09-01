import 'package:flutter/material.dart';

class MyBtmNavBar extends StatefulWidget {
  const MyBtmNavBar({Key? key}) : super(key: key);

  @override
  _MyBtmNavBarState createState() => _MyBtmNavBarState();
}

class _MyBtmNavBarState extends State<MyBtmNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      iconSize: 25,
      fixedColor: Colors.black,
      selectedFontSize: 15,
      unselectedFontSize: 13,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: ("Home"),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.red,
            ),
            label: ("Shop"),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            label: ("Account"),
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            label: ("Help"),
            backgroundColor: Colors.blue),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
