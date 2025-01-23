import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          width: 1,
        ),
        backgroundColor: AppColors.buttonsBG,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 80,
        ),
      ),
      onPressed: () {},
      child: Text(
        "Sign In",
        style: TextStyle(
          color: AppColors.whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
