import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/home/widget/grid_card.dart';
import 'package:bankee/presentation/screens/home/widget/profile_header.dart';
import 'package:bankee/presentation/screens/widgets/credit_card_widget.dart';
import 'package:bankee/presentation/screens/widgets/custom_safe_area.dart';
import 'package:bankee/presentation/screens/widgets/dot_indicator.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.6);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profile header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ProfileHeader(),
              ),

              // card sliders

              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  height: 230.rh(context),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 3,
                    padEnds: false,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: CreditCardWidget(
                          cardColor: index % 2 == 0
                              ? CustomColors.primary
                              : CustomColors.primaryDark,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 10.rh(context)),

              // Dot Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) {
                    return DotIndicator(
                      currentPage: _currentPage,
                      index: index,
                      activeColor: CustomColors.primary.withValues(alpha: 0.8),
                      inactiveColor: CustomColors.bodyGrey,
                    );
                  },
                ),
              ),

              //
              SizedBox(height: 20.rh(context)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: Constants.homeGridItems.length,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final data = Constants.homeGridItems[index];
                    return GridCard(
                      onTap: () {},
                      title: data['title'],
                      subtitle: data['subtitle'],
                      svgImage: data['svgImage'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
