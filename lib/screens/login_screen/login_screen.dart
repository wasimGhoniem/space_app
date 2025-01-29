import 'package:flutter/material.dart';
import 'package:space_app/core/app_styles.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../custom_widget/custom_elevated_button.dart';
import '../home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(
                top: screenSize.height * .04,
                right: screenSize.width * 0.08,
                bottom: screenSize.height * .04),
            child: Image.asset(
              AppAssets.halfSpace,
            ),
          ),
          Positioned(
            left: screenSize.width * .08,
            top: screenSize.height * .3,
            child: Text('Explore\nThe\nUniverse', style: AppStyles.white48W900),
          ),
          Positioned(
            left: screenSize.width * .06,
            bottom: screenSize.height * .02,
            child: CustomElevatedButton(
              text: 'Explore',
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          )
        ]),
      ),
    );
  }
}
