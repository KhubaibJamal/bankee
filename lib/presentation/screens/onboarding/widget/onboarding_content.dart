import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/full_circle_painter.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final int currentPage;
  final int totalPages;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          spacing: 10.rh(context),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: context.font.xxLarge + 7.rf(context),
                      color: CustomColors.primaryScreenColor,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: CustomColors.bodyTextColor,
                    ),
              ),
            ),
            SizedBox(height: 10.rh(context)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: List.generate(
                  totalPages,
                  (index) => buildDot(index),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 100,
          left: -100,
          child: CustomPaint(
            size: const Size(300, 150),
            painter: FullCirclePainter(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentPage == index ? 30 : 10,
      decoration: BoxDecoration(
        color: currentPage == index
            ? CustomColors.primaryScreenColor
            : CustomColors.primary.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
