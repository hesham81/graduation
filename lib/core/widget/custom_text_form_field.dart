import 'package:flutter/material.dart';
import 'package:tgo/core/theme/app_colors.dart';

typedef ValidatorCallback = String? Function(String?);

class CustomTextFormField extends StatefulWidget {
  final double radius;
  final String hintText;
  final IconData? suffixIcon;
  final bool isPassword;
  final ValidatorCallback callBack;

  const CustomTextFormField({
    super.key,
    this.radius = 30,
    required this.hintText,
    this.suffixIcon,
    this.isPassword = false,
    required this.callBack,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  var showedPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      validator: widget.callBack,
      obscureText: showedPassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: (widget.isPassword)
            ? (
                showedPassword
                    ? IconButton(
                        onPressed: () {
                          showedPassword = !showedPassword;
                          setState(() {});
                        },
                        icon:  Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          showedPassword = !showedPassword;
                          setState(() {});
                        },
                        icon:  Icon(
                          Icons.visibility_off,
                          color: Colors.black,
                        ),
                      )
              )
            : Icon(
                widget.suffixIcon,
                color: Colors.black.withOpacity(0.7),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColors.errorColor,
          ),
        ),
      ),
    );
  }
}
