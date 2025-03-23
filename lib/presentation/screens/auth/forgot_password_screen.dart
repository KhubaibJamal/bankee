import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/Custom_app_bar.dart';
import 'package:bankee/presentation/screens/widgets/custom_button.dart';
import 'package:bankee/presentation/screens/widgets/custom_safe_area.dart';
import 'package:bankee/presentation/screens/widgets/custom_text_form_field.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: CustomAppBar(showBackButton: true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10.rh(context),
              children: [
                SizedBox(height: context.screenHeight * 0.06),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    Constants.forgotPassword,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    Constants.forgotPasswordSubtitle,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: CustomColors.secondaryTextColor,
                          fontSize: context.font.normal.rf(context),
                        ),
                  ),
                ),
                SizedBox(height: 20.rh(context)),
                SizedBox(height: 10.rh(context)),
                Text(
                  Constants.eMail,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.0,
                        fontSize: context.font.large.rf(context),
                      ),
                ),
                CustomTextFormField(
                  hintText: "Enter you email address",
                  keyboard: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.rh(context)),
                CustomButton(
                  onPressed: () {},
                  buttonTitle: Constants.submit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
