import 'package:bankee/presentation/screens/auth/signin_screen.dart';
import 'package:bankee/presentation/screens/auth/signup_screen.dart';
import 'package:bankee/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:bankee/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String onboardingScreen = 'onboarding_screen';
  static const String signinScreen   = 'signin_screen';
  static const String signupScreen   = 'signup_screen';
  

}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
            
      case RouteNames.onboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingScreen());

      case RouteNames.signinScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SigninScreen());

      case RouteNames.signupScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupScreen());

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Center(
            child: Text('No Route Defined'),
          ),
        );
    }
  }
}
