import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/photobot/photobot_screen.dart';
import 'package:round_robin_team4/features/round_robin/presentation/screens/welcome/welcome_screen.dart';
import 'package:round_robin_team4/wrapper.dart';

import 'features/auth/auth_service.dart';
import 'features/auth/authuser_model.dart';
import 'features/main_theming_and_state_management/presentation/theme.dart';
import 'features/round_robin/presentation/screens/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
var routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => WelcomeScreen(),
  "/wrapper": (BuildContext context) => Wrapper(),
  "/photobot": (BuildContext context) => PhotoBotScreen()
};


  @override
  Widget build(BuildContext context) {

    return StreamProvider<AuthUser>.value(
      value: AuthUserProvider().user,
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: darkTheme,
        routes: routes
      ),
    );
  }
}
