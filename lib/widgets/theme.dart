import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
 static ThemeData lightTheme(BuildContext context) => ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
             brightness: Brightness.dark,
          fontFamily: GoogleFonts.lato().fontFamily,
              appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: GoogleFonts.lato(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
         );
}