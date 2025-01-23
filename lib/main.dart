import 'package:flutter/material.dart';
import 'package:tgo/core/theme/app_theme.dart';
import 'package:tgo/features/first_screen/pages/first_screen.dart';
import 'package:tgo/features/sign_in/pages/sign_in.dart';
import 'package:tgo/features/sign_up/pages/sign_up.dart';
import 'package:tgo/features/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}
var navigationKey = GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey:navigationKey ,
      initialRoute: Splash.routeName,
      // theme: AppTheme.lightTheme,
      routes: {
        Splash.routeName: (context) => const Splash(),
        SignUp.routeName: (context) => const SignUp(),
        SignIn.routeName: (context) => const SignIn(),
        FirstScreen.routeName: (context) => const FirstScreen(),
      },
    );
  }
}

