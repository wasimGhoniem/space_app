import 'package:flutter/material.dart';
import 'package:space_app/core/app_styles.dart';
import 'package:space_app/custom_widget/arrow_button.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../custom_widget/custom_elevated_button.dart';
import '../../models/planet.dart';
import '../planet_details/planet_details.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          children: [
            Stack(children: [
              Image.asset(AppAssets.halfEarth),
              Image.asset(AppAssets.halfEarthShadow),
              Positioned(
                  top: screenSize.height * .02,
                  left: screenSize.width * .35,
                  child: Text(
                    'Explore',
                    style: AppStyles.white24W700,
                  )),
              Positioned(
                  top: screenSize.height * .2,
                  left: screenSize.width * .04,
                  child: Text(
                    'Which planet\nwould you like to explore?',
                    style: AppStyles.white24W700,
                  )),
            ]),
            SizedBox(
              height: screenSize.height * .42,
              child: PageView.builder(
                  onPageChanged: (index) {
                    currentIndex = index;
                    setState(() {});
                  },
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Image.asset(
                        height: screenSize.height * .02,
                        width: screenSize.width * .02,
                        Planet.getPlanetDetails(index).imagePath);
                  },
                  itemCount: Planet.getPlanetsLength()),
            ),
            SizedBox(
              height: screenSize.height * .02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * .04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        controller.previousPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.easeIn);
                      }),
                  Text(
                    '${Planet.plantsName[currentIndex]}',
                    style: AppStyles.white24W700,
                  ),
                  ArrowButton(
                      icon: Icons.arrow_forward,
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.easeIn);
                      }),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * .05,
            ),
            CustomElevatedButton(
                text: 'Explore ${Planet.plantsName[currentIndex]}',
                onPressed: () {
                  Navigator.pushNamed(context, PlanetDetails.routeName,
                      arguments: Planet.getPlanetDetails(currentIndex));
                }),
          ],
        ),
      ),
    );
  }
}
