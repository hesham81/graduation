import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;

  final Function() onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

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
      onPressed:onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
