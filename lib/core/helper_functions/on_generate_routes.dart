import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce/features/onbording/presentation/views/onboarding_view.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.splahName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    case LoginView.routName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => SignUpView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
