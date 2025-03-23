import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/full_circle_painter.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final Color cardColor;
  const CreditCardWidget({
    super.key,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: cardColor,
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
