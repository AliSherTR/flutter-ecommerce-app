import 'package:ecommerce_app/common/widgets.login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets.login_signup/social_buttons.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // user name
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    // email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    // phone number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    // password
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.lock),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: TTexts.iAgreeTo,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: TTexts.privacyPolicy,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: isDark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                isDark ? TColors.white : TColors.primary,
                          ),
                        ),
                        TextSpan(
                          text: " ${TTexts.and} ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "${TTexts.termsOfUse}",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: isDark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                isDark ? TColors.white : TColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text("Sign Up")),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TFormDivider(isDark: isDark, text: TTexts.orSignUpWith),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
