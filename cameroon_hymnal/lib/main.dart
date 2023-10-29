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
    )
  ),
  
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const HymnalScreen(),
    );
  }
}
