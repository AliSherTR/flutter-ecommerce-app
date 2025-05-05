import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TSpacingStyles {
  static EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
      top: TSizes.appBarHeight,
      left: TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      bottom: TSizes.defaultSpace
  );
}