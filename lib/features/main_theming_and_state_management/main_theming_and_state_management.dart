import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/chess/chess_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/login/login_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/splash_screen.dart';


var routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => new LoginScreen(),
  "/chess": (BuildContext context) => new ChessScreen(),
};

class MainAndStateManagement extends StatefulWidget {
  @override
  _MainAndStateManagementState createState() => _MainAndStateManagementState();
}

class _MainAndStateManagementState extends State<MainAndStateManagement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: SplashScreen(),
      theme: darkTheme
    );
  }
}