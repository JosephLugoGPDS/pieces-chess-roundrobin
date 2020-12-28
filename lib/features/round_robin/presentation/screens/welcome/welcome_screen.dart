import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:round_robin_team4/features/round_robin/presentation/widgets/photo_button_gradient.dart';

class WelcomeScreen extends StatelessWidget {
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
            const Expanded(child: SizedBox()),
            Center(
              child: Text(
                "ROUND ROBIN GRUPO 4",
                style: theme.textTheme.headline5,
              ),
            ),
            const Expanded(child: SizedBox()),
              Image.asset(
                "assets/images/logo_untels.png",
                height: 200,
              ),
              Expanded(
                child: SvgPicture.asset(
                    "assets/images/photobot_white.svg",
                    
                ),
              ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PhotoBotButtonGradient(
                textButton: "PhotoBot",
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/photobot");
                },
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
