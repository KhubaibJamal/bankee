import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/widgets/custom_text_form_field.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          Constants.signin,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: context.font.larger.rf(context),
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 10.rh(context),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.screenHeight * 0.06,
            ),
            Text(
              Constants.welcomeBack,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              Constants.welcomeSubtitle,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: CustomColors.secondaryTextColor,
                    fontSize: context.font.normal.rf(context),
                  ),
            ),
            SizedBox(height: 20.rh(context)),
            Text(
              Constants.emailAddress,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                    fontSize: context.font.large.rf(context),
                  ),
            ),
            CustomTextFormField(
              hintText: "Enter you email address here",
              keyboard: TextInputType.emailAddress,
            ),
            SizedBox(height: 10.rh(context)),
            Text(
              Constants.password,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.0,
                    fontSize: context.font.large.rf(context),
                  ),
            ),
            CustomTextFormField(
              hintText: "Enter you password",
              keyboard: TextInputType.emailAddress,
              isPasswordField: true,
            ),
          ],
        ),
      ),
    );
  }
}
