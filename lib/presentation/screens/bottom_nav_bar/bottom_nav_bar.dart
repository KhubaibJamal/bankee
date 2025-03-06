import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Container(color: Colors.amber),
      Container(color: Colors.blue),
      Container(color: Colors.red),
      Container(color: Colors.pink),
      Container(color: Colors.black),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(screens.length, (index) => screens[index]),
      ),
      bottomNavigationBar: CustomSafeArea(
        bgColor: CustomColors.textFieldFillColor,
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: CustomColors.textFieldFillColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(
                title: Constants.home,
                svgIcon: MediaConstants.homeIcon,
                svgFilledIcon: MediaConstants.homeFilledIcon,
                index: 0,
              ),
              _buildNavItem(
                title: Constants.statistic,
                svgIcon: MediaConstants.statisticIcon,
                svgFilledIcon: MediaConstants.statisticFilledIcon,
                index: 1,
              ),
              _buildAddButton(),
              _buildNavItem(
                title: Constants.myCard,
                svgIcon: MediaConstants.walletIcon,
                svgFilledIcon: MediaConstants.walletFilledIcon,
                index: 3,
              ),
              _buildNavItem(
                title: Constants.profile,
                svgIcon: MediaConstants.profileIcon,
                svgFilledIcon: MediaConstants.profileFilledIcon,
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    bool isSelected = _selectedIndex == 2;
    return GestureDetector(
      onTap: () => _onItemTapped(2),
      child: Container(
        width: 56,
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColors.primary,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: CustomColors.primary.withValues(alpha: 0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  )
                ]
              : null,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.add,
            color: CustomColors.primary,
            size: 28,
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String title,
    required String svgIcon,
    required String svgFilledIcon,
    required int index,
  }) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            isSelected ? svgFilledIcon : svgIcon,
            height: 24,
            width: 24,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: isSelected
                      ? CustomColors.black
                      : CustomColors.bodyTextColor,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

class CustomSafeArea extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final bool? showBorder;
  const CustomSafeArea({
    super.key,
    required this.child,
    this.bgColor,
    this.showBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? CustomColors.primaryScreenColor,
        borderRadius: showBorder == true
            ? const BorderRadius.vertical(
                top: Radius.circular(24),
              )
            : null,
      ),
      child: SafeArea(child: child),
    );
  }
}
