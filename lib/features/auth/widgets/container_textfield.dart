import 'package:flutter/material.dart';
import 'package:round_robin_team4/features/main_theming_and_state_management/presentation/theme.dart';

class ContainertextField extends StatelessWidget {

  final Widget child;

  const ContainertextField({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:5),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: PhotoBotColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}