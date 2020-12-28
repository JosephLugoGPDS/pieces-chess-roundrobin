import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PracticalCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Caso Práctico",
          style: theme.textTheme.headline6,
        ),
        leading: Icon(
          Icons.message,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "PhotoBot",
                style: theme.textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset("assets/images/photobot_white.svg"),
              Text(
                "PhotoBot no puede realizar un mismo proceso más de 5 segundos.",
                style: theme.textTheme.headline6,
              ),
              Text(
                "Se necesita testear el tiempo total de espera del usuario mientras se procesan los filtros. Para ello elaborar: \nUn diagrama de Gant mostrando las iteraciones de todos los procesos en segundos.\nEl tiempo promedio de espera de todos los procesos. \nEl tiempo promedio de retorno de los procesos.",
                style: theme.textTheme.subtitle1.copyWith(
                  color: theme.secondaryHeaderColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
