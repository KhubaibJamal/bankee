import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int currentPage;
  final int index;
  final Color activeColor;
  final Color inactiveColor;

  const DotIndicator({
    super.key,
    required this.currentPage,
    required this.index,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentPage == index ? 30 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
