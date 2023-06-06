import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:yoldost_app_ui/create_trip_screen.dart';
import 'package:yoldost_app_ui/home_screen.dart';
import 'package:yoldost_app_ui/my_trips_screen.dart';
import 'package:yoldost_app_ui/profile_screen.dart';
import 'package:yoldost_app_ui/settings_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    MyTripsScreen(),
    CreateTripScreen(),
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color: Colors.blue,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.place_outlined, color: Colors.white),
            label: 'Мои поезд',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.add, color: Colors.white),
            label: 'Создать',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search, color: Colors.white),
            label: 'Поиск',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person, color: Colors.white),
            label: 'Профиль',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.settings, color: Colors.white),
            label: 'Настройки',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}
