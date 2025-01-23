import 'package:authentication_buttons/authentication_buttons.dart';
import 'package:flutter/material.dart';
import 'package:tgo/core/extensions/extensions.dart';
import 'package:tgo/core/theme/app_colors.dart';
import 'package:tgo/core/widget/custom_label.dart';
import 'package:tgo/core/widget/custom_text_form_field.dart';
import 'package:tgo/core/widget/dividers_word.dart';

import '../../../core/widget/custom_elevated_button.dart';
import '../../first_screen/pages/first_screen.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var username = TextEditingController();
  var password = TextEditingController();
  var key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      resizeToAvoidBottomInset: true,
      body: Form(
        key: key,
        autovalidateMode: AutovalidateMode.onUnfocus,
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: CircleAvatar(
                      backgroundColor: AppColors.greyColor,
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  0.01.height.hSpace,
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: AppColors.blueTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
            ),
            0.08.height.vSpace,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    0.018.height.vSpace,
                    CustomLabel(
                      label: "Email",
                    ).hPadding(20),
                    0.01.height.vSpace,
                    CustomTextFormField(
                      hintText: 'Username@gmail.com',
                      suffixIcon: Icons.email_outlined,
                      callBack: emailValidator,
                    ).hPadding(25),
                    0.018.height.vSpace,
                    CustomLabel(
                      label: "Password",
                    ).hPadding(20),
                    0.01.height.vSpace,
                    CustomTextFormField(
                      hintText: 'Password',
                      isPassword: true,
                      callBack: passwordValidator,
                    ).hPadding(25),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Navigator.pushNamed(
                          //     context, ForgetPassword.routeName);
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 0,
                          ),
                        ),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: AppColors.blueHalfColor,
                          ),
                        ),
                      ),
                    ),
                    0.018.height.vSpace,
                    CustomElevatedButton(
                      text: 'Sign In',
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          Navigator.pushNamed(context, FirstScreen.routeName);
                        }
                      },
                    ).hPadding(
                      0.13.width,
                    ),
                    DividersWord(text: "or sign in with").vPadding(20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AuthenticationButton(
                            authenticationMethod: AuthenticationMethod.google,
                            onPressed: () {},
                          ).hPadding(0.025.height),
                          AuthenticationButton(
                            authenticationMethod: AuthenticationMethod.twitter,
                            onPressed: () {},
                          ).hPadding(0.025.height),
                          AuthenticationButton(
                            authenticationMethod: AuthenticationMethod.facebook,
                            onPressed: () {},
                          ).hPadding(0.025.height),
                        ],
                      ),
                    ),
                  ],
                ).vPadding(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? emailValidator(String? value) {
    const emailPattern =
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.([a-zA-Z]{2,})$';
    final regex = RegExp(emailPattern);

    if (!regex.hasMatch(username.text)) {
      return 'Please enter a valid email address';
    }

    return null; // Valid email
  }

  String? passwordValidator(String? value) {
    const passwordPattern =
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=*!]).{8,}$';
    final regex = RegExp(passwordPattern);

    if (!regex.hasMatch(password.text)) {
      return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character.';
    }

    return null;
  }
}
