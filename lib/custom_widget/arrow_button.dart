import 'package:flutter/material.dart';

import '../core/App_colors.dart';

class ArrowButton extends StatelessWidget {
  IconData icon;
  void Function() onPressed;
  ArrowButton({super.key, required this.icon, required this.onPressed});
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(side: BorderSide(color: AppColors.orange)),
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        fixedSize: Size(screenSize.width * .13, screenSize.height * .055),
      ),
      onPressed: onPressed,
      child: Icon(
        icon,
      ),
    );
  }
}
