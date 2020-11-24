import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChessColors {
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
        color: ChessColors.veryLightGrey,
        width: 2,
      )
    );

final _borderDark =OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: ChessColors.grey,
        width: 2,
      )
    );

final chessGradients = [
  ChessColors.purple,
  ChessColors.green,
];

final lightTheme = ThemeData(
  cardColor: ChessColors.white,
  secondaryHeaderColor: ChessColors.purple,
  bottomAppBarColor: ChessColors.veryLightGrey,
  appBarTheme: AppBarTheme(
    color: ChessColors.white,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline6: TextStyle(
        fontSize: 20,
        color: ChessColors.purple,
        fontWeight: FontWeight.bold
      )
    )
  ),
  scaffoldBackgroundColor: ChessColors.white,
  canvasColor: ChessColors.white,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: ChessColors.purple,
    displayColor: ChessColors.purple,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: ChessColors.purple,
    ),
    border: _borderLight,
    enabledBorder: _borderLight,
    hintStyle: GoogleFonts.poppins(
      color: ChessColors.lightGrey,
      fontSize: 14
    ),
    
  ),
  iconTheme: IconThemeData(
    color: ChessColors.purple
  )
);

final darkTheme = ThemeData(
  cardColor: ChessColors.grey,
  secondaryHeaderColor: ChessColors.white,
  bottomAppBarColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: ChessColors.purple,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline6: TextStyle(
        fontSize: 20,
        color: ChessColors.white,
        fontWeight: FontWeight.bold
      )
    )
  ),
  scaffoldBackgroundColor: ChessColors.dark,
  canvasColor: ChessColors.grey,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: ChessColors.green,
    displayColor: ChessColors.green,
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: ChessColors.white
    ),
    border: _borderDark,
    enabledBorder: _borderDark,
    fillColor: ChessColors.grey,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: ChessColors.white,
      fontSize: 14
    ),
    
  ),
  iconTheme: IconThemeData(
    color: ChessColors.white
  )
);