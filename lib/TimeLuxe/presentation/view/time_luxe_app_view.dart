import 'package:flutter/material.dart';
import 'package:time_luxe/core/global/app_constants.dart';

import '../../../core/global/app_colors.dart';

class TimeLuxeAppView extends StatefulWidget {
  const TimeLuxeAppView({super.key});

  @override
  State<TimeLuxeAppView> createState() => _TimeLuxeAppViewState();
}

class _TimeLuxeAppViewState extends State<TimeLuxeAppView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        selectedIconTheme: const IconThemeData(size: 29),
        unselectedIconTheme: const IconThemeData(size: 24),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Bag',
            icon: Icon(Icons.shopping_bag),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      backgroundColor: AppColors.backGroundColor,
      body: AppConstants.body[_currentIndex],
    );
  }
}