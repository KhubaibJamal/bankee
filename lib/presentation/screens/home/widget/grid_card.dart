import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/custom_svg.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String title, subtitle, svgImage;
  final VoidCallback onTap;
  const GridCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.svgImage,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color(0xFFE3E9ED),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 48.rh(context),
              width: 48.rh(context),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: CustomColors.card,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CustomSvg(assetName: svgImage),
            ),
            SizedBox(height: 10.rh(context)),
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: context.font.large.rf(context),
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 10.rh(context)),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: CustomColors.bodyTextColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
