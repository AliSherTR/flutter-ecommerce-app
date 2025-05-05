import 'package:ecommerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnboardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3,
                ),
              ],
            ),
            OnboardingSkip(),
            OnboardingDotIndicator(),
            OnboardingNextButton(),
          ],
        ),
      ),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  OnboardingNextButton({super.key});
  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: GestureDetector(
        child: ElevatedButton(
          onPressed: () {
            controller.nextPage();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: isDark ? TColors.white : TColors.black,
          ),
          child: Icon(
            Iconsax.arrow_right_3,
            color: isDark ? TColors.black : TColors.white,
          ),
        ),
      ),
    );
  }
}

class OnboardingDotIndicator extends StatelessWidget {
  const OnboardingDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? TColors.white : TColors.black,
          dotHeight: 6,
        ),
      ),
    );
  }
}

class OnboardingSkip extends StatelessWidget {
  OnboardingSkip({super.key});
  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
        },
        child: Text("Skip"),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          width: THelperFunctions.screenWidth() * 0.8,
          height: THelperFunctions.screenHeight() * 0.6,
          image: AssetImage(image),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
