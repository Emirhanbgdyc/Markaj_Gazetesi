

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightTheme =ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: colors['primary'], // Bizlere bodyi saglar
  textTheme: GoogleFonts.latoTextTheme().copyWith(

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
  textTheme: GoogleFonts.bebasNeueTextTheme().copyWith(
    titleSmall: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      )
    ),
    titleMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
          color: darkColors["titleColor"],
      ),
    ),
    titleLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
          color: darkColors["titleColor"],
      ),
    ),

    bodySmall: GoogleFonts.aBeeZee(
      textStyle: TextStyle(
        color: darkColors["primary"],
      ),
    ),
    bodyMedium: GoogleFonts.aBeeZee(
      textStyle: TextStyle(
        color: darkColors["primary"],
      ),
    ),
    bodyLarge: GoogleFonts.abel(
      textStyle: TextStyle(
        color: darkColors["primary"],
      ),
    ),
    headlineSmall:GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineMedium: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
    headlineLarge: GoogleFonts.bebasNeue(
      textStyle: TextStyle(
        color: darkColors["titleColor"],
      ),
    ),
  ),
);