import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/profile.dart';
import 'package:social_app/saved.dart';
import 'package:social_app/search.dart';

import 'home.dart';
import 'intro_1.dart';
import 'intro_2.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _childern = [
    HomePage(),
    SearchPage(),
    SavedPage(),
    ProfilePage(),

  ];

  void _OnTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childern[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed   ,
          backgroundColor: Colors.grey.shade100,
          elevation: 10,
          currentIndex: _selectedIndex,
          onTap: _OnTapped,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dynamic_feed_outlined),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],

        ),
      ),
    );
  }
}

