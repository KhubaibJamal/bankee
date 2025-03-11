import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';

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
        color: bgColor ?? CustomColors.white,
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
