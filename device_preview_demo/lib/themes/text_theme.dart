// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Gist: When A MD migration form one spec to another spec version is mature ehough
//       one can just define a TextTheme with Typography deviations and the custom fonts.
//
//       When its early in MD spec migration, one has to define a custom typography
//       class accodring to the new spec with custom classes and text theme and individually
//       set widgets to the correct TextTheme method.

final TextTheme lightTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,

  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,

  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,

  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,

  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
 
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,

  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,

  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,

  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,

  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
    

  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.
    shadows: lightShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
);

final TextTheme darkTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 57, // Same as M3, defaults to 96 in Material2018 Typography.
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displayMedium: TextStyle(
    fontSize: 45, // Same as M3, defaults to 60 in Material2018 Typography.
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  displaySmall: TextStyle(
    fontSize: 36, // Same as M3, defaults to 48 in Material2018 Typography.
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineMedium: TextStyle(
    fontSize: 28, // Same as M3, defaults to 34 in Material2018 Typography.
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  headlineSmall: TextStyle(
    fontSize: 24.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleMedium: TextStyle(
    fontSize: 16.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  titleSmall: TextStyle(
    fontSize: 14.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
  ),
  bodyLarge: TextStyle(
    fontSize: 16.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodyMedium: TextStyle(
    fontSize: 14.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  bodySmall: TextStyle(
    fontSize: 12.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelLarge: TextStyle(
    fontSize: 14.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  labelMedium: TextStyle(
    fontSize: 12.0,
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
  // I chose this, I later saw it happened to match new M3 style too - cool!
  labelSmall: TextStyle(
    fontSize: 11, // Defaults to 10 in Material2018 Typography.
    letterSpacing: 0.5, // Defaults to 1.5 in Material2018 Typography.
    shadows: darkShadows,
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
  ),
);

final List<Shadow> lightShadows = [
  const Shadow(color: Color(0xFFA0C2ED)),
];

final List<Shadow> darkShadows = [
  const Shadow(color: Color(0xFF3873BA)),
];
