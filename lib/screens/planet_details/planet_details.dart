import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

import 'package:space_app/custom_widget/arrow_button.dart';
import 'package:space_app/models/planet.dart';

import '../../core/App_colors.dart';
import '../../core/app_assets.dart';
import '../../core/app_styles.dart';

class PlanetDetails extends StatelessWidget {
  static const String routeName = 'PlanetDetails';
  Flutter3DController controller = Flutter3DController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)!.settings.arguments as Planet;
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
                    left: screenSize.width * .4,
                    child: Text(
                      args.name,
                      style: AppStyles.white24W700,
                    )),
                Positioned(
                  top: screenSize.height * .02,
                  child: ArrowButton(
                      icon: Icons.arrow_back,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Positioned(
                    top: screenSize.height * .2,
                    left: screenSize.width * .04,
                    child: Text(
                      args.title,
                      style: AppStyles.white24W700,
                    )),
              ]),
              SizedBox(
                  height: screenSize.height * .35,
                  child: Flutter3DViewer(
                    src: args.planet3dPath,
                    controller: controller,
                  )),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * .02),
                child: Row(
                  children: [
                    Text(
                      'About',
                      style: AppStyles.white24W700,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height * .02,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      args.about,
                      style: AppStyles.white20W600,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
