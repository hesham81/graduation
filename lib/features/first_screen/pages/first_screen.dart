import 'package:flutter/material.dart';
import 'package:tgo/features/sign_in/pages/sign_in.dart';
import 'package:tgo/features/sign_up/pages/sign_up.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_colors.dart';

class FirstScreen extends StatelessWidget {
  static const String routeName = "/first_screen";

  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppAssets.firstScreenIMG,
              fit: BoxFit.cover,
            ),
            Image.asset(
              AppAssets.fullLogo,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonsBG
                    ,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 8,
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignIn.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonsBG,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 85,
                      vertical: 8,
                    ),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
