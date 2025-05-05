import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.isDark,
    required this.text
  });

  final bool isDark;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkerGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkerGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}