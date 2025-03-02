import 'package:bankee/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:bankee/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String splashScreen = 'splash_screen';
  static const String onboardingScreen = 'onboarding_screen';
  

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

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Center(
            child: Text('No Route Defined'),
          ),
        );
    }
  }
}
