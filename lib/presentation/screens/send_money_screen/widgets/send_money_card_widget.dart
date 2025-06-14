import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/custom_svg.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class SendMoneyCardWidget extends StatelessWidget {
  final bool isFavorite;
  const SendMoneyCardWidget({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            width: 48.rw(context),
            height: 48.rh(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s",
                ),
              ),
            ),
          ),
          title: Text(
            "Welcome Back",
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: CustomColors.secondaryTextColor,
                      fontSize: context.font.normal.rf(context),
                    ),
          ),
          subtitle: Text(
            "Sophia Calzoni",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(
                  fontSize: context.font.larger.rf(context),
                ),
          ),
          trailing: GestureDetector(
            onTap: () {},
            child: Container(
              height: 48.rh(context),
              width: 48.rw(context),
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: CustomColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFF2F2F5),
                  width: 2,
                ),
              ),
              child: Center(
                child: CustomSvg(
                  assetName: isFavorite
                      ? MediaConstants.favoriteFilled
                      : MediaConstants.favoriteBorder,
                  height: 24,
                  width: 24,
                  color: CustomColors.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
