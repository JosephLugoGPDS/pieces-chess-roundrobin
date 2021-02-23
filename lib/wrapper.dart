import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/auth/authentication.dart';
import 'features/auth/authuser_model.dart';
import 'features/round_robin/presentation/screens/welcome/welcome_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<AuthUser>(context);

    if(user != null) {
      return WelcomeScreen();
    } else{
      return Authentication();
    }
  }
}