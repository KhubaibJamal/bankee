import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/routes/routes.dart';
import 'package:bankee/presentation/screens/auth/widget/social_button.dart';
import 'package:bankee/presentation/screens/widgets/custom_button.dart';
import 'package:bankee/presentation/screens/widgets/custom_check_box.dart';
import 'package:bankee/presentation/screens/widgets/custom_text_form_field.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool isRemember = false;
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
        child: SingleChildScrollView(
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

              // remember me and forget password
              SizedBox(height: 10.rh(context)),
              Row(
                children: [
                  Expanded(
                    child: CustomCheckBoxWithText(
                      initialValue: isRemember,
                      onChanged: (value) {
                        setState(() {
                          isRemember = value;
                        });
                      },
                      label: Constants.rememberMe,
                    ),
                  ),
                  // const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteNames.forgotPasswordScreen);
                    },
                    child: Text(
                      Constants.forgotPassword,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: CustomColors.primaryTextColor,
                            fontSize: context.font.large.rf(context),
                          ),
                    ),
                  )
                ],
              ),

              // sign in button
              SizedBox(height: 20.rh(context)),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.bottomNavBar);
                },
                buttonTitle: Constants.signin,
              ),

              // dont have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${Constants.dontHaveAnAccount} ",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: CustomColors.bodyTextColor,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.signupScreen);
                    },
                    child: Text(
                      Constants.signUp,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ),
                  ),
                ],
              ),

              // or sign in with
              SizedBox(height: 10.rh(context)),
              Center(
                child: Text(
                  Constants.orSignInWith,
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
