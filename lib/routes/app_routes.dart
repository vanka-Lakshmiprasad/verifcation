import 'package:flutter/material.dart';
import 'package:verifcation/presentation/verification_screen.dart';

class AppRoutes {
  static const String verificationScreen = '/verification_screen';

  static Map<String, WidgetBuilder> routes = {
    verificationScreen: (context) => const VerificationScreen()
  };
}
