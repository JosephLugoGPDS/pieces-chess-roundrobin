import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoBotColors {
  static final purple = Color(0xFF5117ac);
  static final green = Color(0xFF20d0c4);
  static final dark = Color(0xFF03091e);
  static final grey = Color(0xFF212738);
  static final lightGrey = Color(0xFFbbbbbb);
  static final veryLightGrey = Color(0xFFf3f3f3);
  static final white = Color(0xFFffffff);
  static final pink = Color(0xFFf5638b);
}

final _borderLight =OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: PhotoBotColors.veryLightGrey,
        width: 2,
      )
    );

final _borderDark =OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: PhotoBotColors.grey,
        width: 2,
      )
    );

final photoGradients = [
  PhotoBotColors.purple,
  PhotoBotColors.green,
];

final lightTheme = ThemeData(
  cardColor: PhotoBotColors.white,
  secondaryHeaderColor: PhotoBotColors.purple,
  bottomAppBarColor: PhotoBotColors.veryLightGrey,
  appBarTheme: AppBarTheme(
    color: PhotoBotColors.white,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline6: TextStyle(
        fontSize: 20,
        color: PhotoBotColors.purple,
        fontWeight: FontWeight.bold
      )
    )
  ),
  scaffoldBackgroundColor: PhotoBotColors.white,
  canvasColor: PhotoBotColors.white,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: PhotoBotColors.purple,
    displayColor: PhotoBotColors.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: PhotoBotColors.purple,
    ),
    border: _borderLight,
    enabledBorder: _borderLight,
    hintStyle: GoogleFonts.poppins(
      color: PhotoBotColors.lightGrey,
      fontSize: 14
    ),
    
  ),
  iconTheme: IconThemeData(
    color: PhotoBotColors.purple
  )
);

final darkTheme = ThemeData(
  cardColor: PhotoBotColors.grey,
  secondaryHeaderColor: PhotoBotColors.white,
  bottomAppBarColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: PhotoBotColors.purple,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline6: TextStyle(
        fontSize: 20,
        color: PhotoBotColors.white,
        fontWeight: FontWeight.bold
      )
    )
  ),
  scaffoldBackgroundColor: PhotoBotColors.dark,
  canvasColor: PhotoBotColors.grey,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: PhotoBotColors.green,
    displayColor: PhotoBotColors.green,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: PhotoBotColors.white
    ),
    border: _borderDark,
    enabledBorder: _borderDark,
    fillColor: PhotoBotColors.grey,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: PhotoBotColors.white,
      fontSize: 14
    ),
    
  ),
  iconTheme: IconThemeData(
    color: PhotoBotColors.white
  )
);