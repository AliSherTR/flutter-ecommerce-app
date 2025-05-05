import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets.login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets.login_signup/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TLoginHeader(isDark: isDark),

              TLoginForm(),
              TFormDivider(isDark: isDark, text: TTexts.orSignInWith,),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








