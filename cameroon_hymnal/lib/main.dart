import 'package:cameroon_hymnal/screens/hymnal_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appScheme = ThemeData.from(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF443454),
  ),
  textTheme: GoogleFonts.aBeeZeeTextTheme()
);
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appScheme,
      home: const HymnalScreen(),
    ),
  );
}
