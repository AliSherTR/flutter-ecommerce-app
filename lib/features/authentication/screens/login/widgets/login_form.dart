import 'package:ecommerce_app/features/authentication/screens/signup/sign_up.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                // forget password
                TextButton(
                  onPressed: () {},
                  child: Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.signIn),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
