import 'package:bankee/presentation/screens/auth/forgot_password_screen.dart';
import 'package:bankee/presentation/screens/auth/signin_screen.dart';
import 'package:bankee/presentation/screens/auth/signup_screen.dart';
import 'package:bankee/presentation/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bankee/presentation/screens/home/home_screen.dart';
import 'package:bankee/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:bankee/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String onboardingScreen = 'onboarding_screen';
  static const String signinScreen = 'signin_screen';
  static const String signupScreen = 'signup_screen';
  static const String forgotPasswordScreen = 'forgot_password_screen';
  static const String bottomNavBar = 'bottom_nav_bar';
  static const String homeScreen = 'home_screen';
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

      case RouteNames.forgotPasswordScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ForgotPasswordScreen());

      case RouteNames.bottomNavBar:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavBar());

      case RouteNames.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Center(
            child: Text('No Route Defined'),
          ),
        );
    }
  }
}
