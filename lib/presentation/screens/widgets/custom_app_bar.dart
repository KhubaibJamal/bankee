import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? showBackButton;
  final List<Widget>? actions;
  final Color? backButtonColor;
  final VoidCallback? onBackButtonTap;
  final Color? appBarColor;
  const CustomAppBar({
    super.key,
    this.title,
    this.showBackButton = false,
    this.actions,
    this.backButtonColor,
    this.onBackButtonTap,
    this.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: appBarColor ?? CustomColors.white,
      surfaceTintColor: CustomColors.white,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: context.font.larger.rf(context),
            ),
      ),
      actions: actions,
      leading: (showBackButton == true)
          ? InkWell(
              onTap: onBackButtonTap ??
                  () {
                    Navigator.pop(context);
                  },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 48,
                  width: 48,
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
                    child: SvgPicture.asset(
                      MediaConstants.arrowLeft,
                      // height: 24,
                      // width: 24,
                      colorFilter: const ColorFilter.mode(
                        CustomColors.black,
                        BlendMode.srcIn,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
