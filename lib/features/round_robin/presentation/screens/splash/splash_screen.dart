import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  bool isShowIndicator = false;

  @override
  void initState() {
    // ToDo: implement initState
    super.initState();
    // Timer(Duration(seconds: 3),() => Navigator.pushNamed(context, "/wrapper"));
    _loadNextScreen();
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 150).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();

    animation.addStatusListener((AnimationStatus status) async {
      if (status == AnimationStatus.completed) {
        isShowIndicator = true;
      }
    });
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  _loadNextScreen() async {
    // final user = Provider.of<AuthUser>(context);
    await Future.delayed(const Duration(seconds: 3),
        // () => Navigator.pushNamed(context, "/welcome"));
        () {
        Navigator.pushNamed(context, "/wrapper");
    });
  }



  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: <Widget>[
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: photoGradients),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: animation.value,
                  height: animation.value,
                  child: Image.asset(
                    "assets/images/logo_untels.png",
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Grupo 4",
                  style: theme.textTheme.headline4
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "ROUND ROBIN",
                  style: theme.textTheme.headline4.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "INTEGRANTES: ",
                  style: theme.textTheme.headline4,
                ),
                Text(
                  "Camiloaga Parinango Kelly",
                  style: theme.textTheme.subtitle2.copyWith(
                    color: theme.secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Flores Molina Luis",
                  style: theme.textTheme.subtitle2.copyWith(
                    color: theme.secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Mesa Rodiguez Jhon Esteban",
                  style: theme.textTheme.subtitle2.copyWith(
                    color: theme.secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Vilca Fernandez Jhossimar",
                  style: theme.textTheme.subtitle2.copyWith(
                    color: theme.secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Yangali Lugo Joseph Edinson",
                  style: theme.textTheme.subtitle2.copyWith(
                    color: theme.secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                  child: isShowIndicator
                      ? CupertinoActivityIndicator(
                          radius: 12,
                        )
                      : SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
