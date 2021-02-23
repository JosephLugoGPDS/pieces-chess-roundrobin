import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class ButtonNeed extends StatelessWidget {

  const ButtonNeed({this.onTap, this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context);
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: PhotoBotColors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: theme.accentTextTheme.subtitle1.copyWith(
                color: PhotoBotColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}