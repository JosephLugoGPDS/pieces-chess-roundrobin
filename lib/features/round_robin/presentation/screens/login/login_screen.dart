import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/round_robin/presentation/widgets/chess_button_gradient.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: theme.canvasColor,
          // gradient: LinearGradient(
          //   colors: chessGradients
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "ROUND ROBIN GRUPO 4",
                  style: theme.textTheme.headline5,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset(
                  "assets/images/logo_untels.png"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20, top: 40,bottom: 0),
              child: ChessButtonGradient(
                  textButton: "Chess White",
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed("/chess");
                  },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: ChessButtonGradient(
                  textButton: "Chess Dark",
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed("/chess");
                  },
              ),
            ),
          ]
        )
      )
    );
  }
}