import 'package:cameroon_hymnal/screens/favorite_screen.dart';
import 'package:cameroon_hymnal/screens/hymnal_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 48, 13, 174),
      brightness: Brightness.light),
  textTheme: GoogleFonts.aBeeZeeTextTheme(),
);

final darkTheme = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 5, 99, 125),
    brightness: Brightness.dark,
  ),
  textTheme: GoogleFonts.aBeeZeeTextTheme().copyWith(
      bodyLarge: GoogleFonts.aBeeZee(
    color: Colors.white,
    fontWeight: FontWeight.normal,
  )),
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentScreenIndex = 0;

  void _onSelectScreen(int index) {
    setState(
      () {
        currentScreenIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
  Widget currentScreen = const HymnalScreen();
  if (currentScreenIndex == 1){
    currentScreen = const FavoriteScreen();
  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: currentScreen,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
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
      ),
    );
  }
}
