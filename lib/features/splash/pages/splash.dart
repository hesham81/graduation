import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../first_screen/pages/first_screen.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash';

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3250), () {
      Navigator.pushReplacementNamed(context, FirstScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            ShakeY(
              duration: const Duration(seconds: 3),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    AppAssets.clouds,
                    color: AppColors.whiteColor,
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    AppAssets.clouds,
                    color: AppColors.whiteColor,
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ShakeY(
              duration: Duration(seconds: 3),
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.38),
                  SvgPicture.asset(
                    AppAssets.clouds,
                    color: AppColors.whiteColor,
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            ElasticInRight(
              duration: Duration(seconds: 3),
              child: Image.asset(AppAssets.fullLogo),
            ),
          ],
        ),
      ),
    );
  }
}
