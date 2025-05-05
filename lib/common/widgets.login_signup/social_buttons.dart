import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(

          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(300),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.lg,
              height: TSizes.lg,

              image: AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(300),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.lg,
              height: TSizes.lg,

              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}