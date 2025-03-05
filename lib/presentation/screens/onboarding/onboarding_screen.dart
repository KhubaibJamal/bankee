import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/routes/routes.dart';
import 'package:bankee/presentation/screens/onboarding/widget/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            _currentPage == 2
                ? TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RouteNames.signinScreen);
                    },
                    child: Text(
                      "Get Started",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: CustomColors.primaryScreenColor,
                          ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: Constants.onboardingData.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final data = Constants.onboardingData[index];
            return OnboardingContent(
              title: data["title"] ?? "",
              subtitle: data["subtitle"] ?? "",
              image: data["image"] ?? "",
              currentPage: _currentPage,
              totalPages: Constants.onboardingData.length,
            );
          },
        ),
        // body: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Expanded(
        //       child: PageView.builder(
        //         controller: _pageController,
        //         itemCount: onboardingData.length,
        //         onPageChanged: (index) {
        //           setState(() {
        //             _currentPage = index;
        //           });
        //         },
        //         itemBuilder: (context, index) {
        //           return OnboardingContent(
        //             title: onboardingData[index]["title"]!,
        //             subtitle: onboardingData[index]["subtitle"]!,
        //           );
        //         },
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //       child: Row(
        //         children: List.generate(
        //           onboardingData.length,
        //           (index) => buildDot(index),
        //         ),
        //       ),
        //     ),
        //     Expanded(child: Image.asset(MediaConstants.onboarding1)),
        //   ],
        // ),
      ),
    );
  }
}
