import 'package:bankee/presentation/core/constants/media_constants.dart';

class Constants {
  // lottie animations
  static const String progressLottieFileWhite = 'loading_white.json';
  static const String progressLottieFile = 'loading.json';
  static const bool useLottieProgress = true;

  // app name
  static const String appName = 'Bankee';

  // onboarding
  static const List<Map<String, String>> onboardingData = [
    {
      "title": "The best app\nfor manage your\nfinance",
      "subtitle":
          "Easily track your expenses, create budgets, and gain full control over your financial goals with smart insights.",
      "image": MediaConstants.onboarding1,
    },
    {
      "title": "Simple and easy\nto control your\nmoney",
      "subtitle":
          "Monitor your income, manage transactions, and stay financially organized with an intuitive and user-friendly interface.",
      "image": MediaConstants.onboarding2,
    },
    {
      "title": "Your savings are\nsafe by smart\ninvest",
      "subtitle":
          "Secure your future with intelligent investment options that help you grow your savings while minimizing risks.",
      "image": MediaConstants.onboarding3,
    },
  ];
}
