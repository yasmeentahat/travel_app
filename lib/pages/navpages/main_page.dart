import 'package:flutter/material.dart';
import 'package:travel_app/pages/navpages/search_page.dart';

import '../../misc/colors.dart';
import '../home_page.dart';
import 'bar_item_page.dart';
import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(), // 0
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];

  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed, // For colours it has to be fixed.

        backgroundColor: Colors.black12,

        onTap: _onTap,

        currentIndex:
            _currentIndex, // Current index of the bottom navigation bar.

        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor.withOpacity(0.3),
        showSelectedLabels: true,
        showUnselectedLabels: false,

        elevation: 0,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
