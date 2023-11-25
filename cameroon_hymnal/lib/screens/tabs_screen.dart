import 'package:cameroon_hymnal/screens/hymnal_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentScreenIndex = 0;

  void _onSelectScreen(int index) {
    setState(
      () {
        _currentScreenIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = const HymnalScreen();


    if (_currentScreenIndex == 1) {
      currentScreen = const HymnalScreen(
      );
    }

    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreenIndex,
        onTap: (index) {
          _onSelectScreen(index);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Hymns',
            activeIcon: Icon(
              Icons.music_note,
              size: 30,
            ),
            icon: Icon(
              Icons.music_note_outlined,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(
              Icons.star_border,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.star,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
