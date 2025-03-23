import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/home/widget/profile_header.dart';
import 'package:bankee/presentation/screens/widgets/custom_safe_area.dart';
import 'package:bankee/presentation/screens/widgets/custom_svg.dart';
import 'package:bankee/presentation/screens/widgets/full_circle_painter.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profile header
                ProfileHeader(),

                // card sliders

                SizedBox(
                  height: 263.rh(context),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 3,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return AnimatedScale(
                        scale: index == _currentPage ? 1 : 0.9,
                        duration: const Duration(milliseconds: 300),
                        child: SizedBox(
                          width: context.screenWidth * 0.55,
                          child: FinanceCardWidget(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),

                // Dot Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => buildDot(index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: _currentPage == index ? 30 : 10,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? CustomColors.primary.withValues(alpha: 0.8)
            : CustomColors.bodyGrey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class FinanceCardWidget extends StatelessWidget {
  const FinanceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: CustomColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "x-card",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: CustomColors.textFieldFillColor,
                          fontSize: context.font.small.rf(context),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "visa",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: CustomColors.textFieldFillColor,
                        ),
                  ),
                ],
              ),
              const Spacer(),

              // balance
              Text(
                "Balance",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: CustomColors.secondaryTextColor,
                      fontSize: context.font.normal.rf(context),
                    ),
              ),
              SizedBox(height: 10.rh(context)),
              Text(
                "\$23,243",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: CustomColors.white,
                      fontSize: context.font.extraLarge.rf(context),
                    ),
              ),

              // card no and expiry
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "****\t\t4587",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: CustomColors.secondaryTextColor,
                          fontSize: context.font.normal.rf(context),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "12/24",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: CustomColors.textFieldFillColor,
                          fontSize: context.font.small.rf(context),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          right: -50,
          child: CustomPaint(
            size: const Size(200, 100),
            painter: FullCirclePainter(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
