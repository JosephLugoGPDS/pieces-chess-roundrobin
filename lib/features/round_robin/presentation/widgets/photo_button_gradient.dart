import 'package:flutter/material.dart';

import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class PhotoBotButtonGradient extends StatelessWidget {
  final VoidCallback onTap;
  final String textButton;
  final EdgeInsets padding;

  const PhotoBotButtonGradient(
      {
      @required this.onTap,
      @required this.textButton,
      this.padding = const EdgeInsets.all(14)
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: photoGradients),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            textButton,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
