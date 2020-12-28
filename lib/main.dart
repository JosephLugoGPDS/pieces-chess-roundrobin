import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/photobot_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/welcome/welcome_screen.dart';

import 'features/main_theming_and_state_management/presentation/theme.dart';
import 'features/round_robin/presentation/screens/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
var routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/photobot": (BuildContext context) => PhotoBotScreen()
};


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: darkTheme,
      routes: routes
    );
  }
}
