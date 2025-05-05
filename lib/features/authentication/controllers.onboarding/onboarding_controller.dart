import 'package:ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> pageIndex = 0.obs;

  // Update the page index when the user swipes
  void updatePageIndicator(int index) => pageIndex.value = index;

  // Navigate to a specific page when a dot is clicked
  void dotNavigationClick(int index) {
    pageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Navigate to the next page or handle the last page
  void nextPage() {
    if (pageIndex.value == 2) {
     Get.offAll(const LoginScreen());
    } else {
      int page = pageIndex.value + 1;
      pageIndex.value = page;
      pageController.jumpToPage(page);
    }
  }

  // Skip to the last page
  void skipPage() {
    pageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  @override
  void onClose() {
    pageController.dispose(); // Clean up the PageController
    super.onClose();
  }
}
