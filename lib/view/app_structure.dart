import 'package:flutter/material.dart';
import 'package:insync/view/community/community.dart';
import 'package:insync/view/home/home.dart';
import 'package:insync/view/profile/profile.dart';
import 'package:insync/widgets/bottom_nav_bar.dart';
/*
  this has the bottom navigation bar of the app
*/

class MainApp extends StatefulWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  //add widgets of all relevant screens here
  final List<Widget> _children = [
    const HomePage(),
    const Community(),
    const Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return _children[index];
        },
      ),
      // bottom navbar
      bottomNavigationBar:
          buildBottomNavigationBar(context, onTabTapped, _currentIndex),
    );
  }
}
