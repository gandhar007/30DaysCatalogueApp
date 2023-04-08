import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    //primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.white,
      iconTheme: IconThemeData(
      color: Colors.black,
    ),
   ),
  );

  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
  );
}