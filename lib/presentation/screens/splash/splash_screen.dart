import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () =>
          Navigator.pushReplacementNamed(context, RouteNames.onboardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            CustomColors.primary,
            Color(0Xff18102e),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                MediaConstants.logo,
                height: 180,
                width: 180,
              ),
              Text(
                Constants.appName,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: CustomColors.primaryScreenColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
