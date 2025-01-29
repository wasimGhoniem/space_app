import 'package:flutter/material.dart';

import '../core/App_colors.dart';
import '../core/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  void Function() onPressed;
  CustomElevatedButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orange,
            fixedSize: Size(screenSize.width * 0.85, screenSize.height * .08),
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * .08,
                vertical: screenSize.height * .02),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
                side: BorderSide(color: AppColors.orange))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppStyles.white20W600,
            ),
            Icon(
              Icons.arrow_forward,
              color: AppColors.white,
            ),
          ],
        ));
  }
}
