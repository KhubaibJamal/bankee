import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  final String svgPath;
  const SocialButton({super.key, required this.onTap, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: CustomColors.card,
        ),
        child: Center(
          child: SvgPicture.asset(
            svgPath,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }
}
