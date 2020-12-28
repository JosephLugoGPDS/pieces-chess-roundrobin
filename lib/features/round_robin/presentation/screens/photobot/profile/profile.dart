import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sistemas Operativos",
          style: theme.textTheme.headline6,
        ),
        // centerTitle: true,
        leading: Icon(Icons.group),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: TopProfile(theme: theme, size: size),
          ),
          Expanded(
            child: BodyProfile(theme: theme),
          ),
          const SizedBox(height: 10),
          Container(
            height: 40,
            child: ButtonProfile(theme: theme),
          ),
        ],
      ),
    );
  }
}

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Esta aplicación fue programada en Dart y Flutter. En un trabajo colaborativo para el curso de Sistemas Operativos.",
          style: theme.textTheme.subtitle2.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.secondaryHeaderColor,
          ),
        ),
      ),
    );
  }
}

class BodyProfile extends StatelessWidget {
  const BodyProfile({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // elevation: 8,
        color: theme.canvasColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(child: SizedBox(),flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Integrantes:",
                style: theme.textTheme.subtitle1.copyWith(
                    color: PhotoBotColors.green, fontWeight: FontWeight.bold),
              ),
            ),
            const Expanded(child: SizedBox(),flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                  ],
                ),
              ),
            ),
            const Expanded(child: SizedBox(),flex: 2),
          ],
        ),
      ),
    );
  }
}

class TopProfile extends StatelessWidget {
  const TopProfile({
    Key key,
    @required this.theme,
    @required this.size,
  }) : super(key: key);

  final ThemeData theme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: PhotoBotColors.green,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: theme.canvasColor,
                  radius: size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/images/logo_untels.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PhotoBotColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: PhotoBotColors.purple,
                    radius: size.height * 0.02,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: PhotoBotColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          "Grupo 4 Round Robin",
          style: theme.textTheme.headline6.copyWith(
            color: theme.secondaryHeaderColor,
            backgroundColor: Colors.transparent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
