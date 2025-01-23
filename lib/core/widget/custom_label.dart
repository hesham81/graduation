import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomLabel extends StatelessWidget {
  final String label;

  const CustomLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    );
  }
}
