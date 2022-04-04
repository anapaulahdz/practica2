import 'package:flutter/material.dart';
import 'package:practica2/setters/settings_color.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Login(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/logo.png",
      text: "LINCES",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
      backgroundColor: SettingsColor.backColor,
    );
  }
}
