import 'package:appweather/page/detail/detail_page.dart';
import 'package:appweather/page/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: "home",
    ),
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: "list"),
  ];

  List<Widget> listWidget = [
    HomePage(),
    DetailPage(),
  ];
  int position = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listWidget[position],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: position,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.white24,
        elevation: 0,
        items: listItem,
        onTap: (index) {
          setState(() {
            position = index;
          });
        },
      ),
    );
  }
}
