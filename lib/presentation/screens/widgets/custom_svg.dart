import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  final String assetName;
  final double? height;
  final double? width;
  const CustomSvg({
    super.key,
    required this.assetName,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: height,
      width: width,
    );
  }
}
