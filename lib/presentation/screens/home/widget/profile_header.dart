import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/custom_svg.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(dividerColor: Colors.transparent),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        tileColor: Colors.transparent,
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
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: CustomColors.secondaryTextColor,
                    fontSize: context.font.normal.rf(context),
                  ),
            ),
            Text(
              "Sophia Calzoni",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: context.font.larger.rf(context),
                  ),
            ),
          ],
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
                assetName: MediaConstants.notificationIcon,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
