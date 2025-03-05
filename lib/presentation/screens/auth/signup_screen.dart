import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/auth/widget/social_button.dart';
import 'package:bankee/presentation/screens/widgets/custom_button.dart';
import 'package:bankee/presentation/screens/widgets/custom_text_form_field.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          Constants.signUp,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: context.font.larger.rf(context),
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.rh(context),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.screenHeight * 0.06),
              Text(
                Constants.createAccount,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                Constants.createAccountSubtitle,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: CustomColors.secondaryTextColor,
                      fontSize: context.font.normal.rf(context),
                    ),
              ),
              SizedBox(height: 20.rh(context)),
              Text(
                Constants.fullName,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.0,
                      fontSize: context.font.large.rf(context),
                    ),
              ),
              CustomTextFormField(
                hintText: "Enter your name",
                keyboard: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.rh(context)),
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

              // sign in button
              SizedBox(height: 20.rh(context)),
              CustomButton(
                onPressed: () {},
                buttonTitle: Constants.signUp,
              ),

              // or sign in with
              SizedBox(height: 10.rh(context)),
              Center(
                child: Text(
                  Constants.orSignUpWith,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: CustomColors.bodyTextColor,
                      ),
                ),
              ),

              // social buttons
              SizedBox(height: 10.rh(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  MediaConstants.socialIcons.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SocialButton(
                        onTap: () {},
                        svgPath: MediaConstants.socialIcons[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
