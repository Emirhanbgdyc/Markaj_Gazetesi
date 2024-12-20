

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightTheme =ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: colors['primary'], // Bizlere bodyi saglar
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.lato(
        textStyle: TextStyle(
          color: darkColors["titleColor"],
        )
    ),
    titleMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    titleLarge: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    bodySmall: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    bodyMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    bodyLarge: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineSmall:GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineLarge: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
  ),

);

final darkTheme =ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: colors['blackColor'],
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      )
    ),
    titleMedium: GoogleFonts.lato(
      textStyle: TextStyle(
          color: darkColors["titleColor"],
      ),
    ),
    titleLarge: GoogleFonts.lato(
      textStyle: TextStyle(
          color: darkColors["titleColor"],
      ),
    ),

    bodySmall: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    bodyMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    bodyLarge: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineSmall:GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineMedium: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineLarge: GoogleFonts.lato(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
  ),
);