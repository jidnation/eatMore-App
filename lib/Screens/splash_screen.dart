import 'package:eatmore_food/Configurations/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loader();
  }

  void loader() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Get.off(() => const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(children: [
              Positioned(
                top: SizeConfig.screenHeight * 0.4,
                child: SvgPicture.asset('icons/pizLogo.svg',
                    width: 40, height: 40),
              ),
              Positioned(
                top: SizeConfig.screenHeight * 0.43,
                child: SvgPicture.asset('icons/eatmore.svg',
                    width: SizeConfig.screenWidth * 0.7, height: 35),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
