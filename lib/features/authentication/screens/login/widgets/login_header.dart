import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            isDark ? TImages.lightAppLogo : TImages.darkAppLogo,
          ),
        ),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}