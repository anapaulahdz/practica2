import 'package:flutter/material.dart';
import 'package:practica2/routes/routes.dart';
import 'package:practica2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getApplicationRoutes(),
      home: SplashScreen(),
    );
  }
}
//AIzaSyAhsdfGuz_kzjc8rBhB_UPfMVcLyKVVOaA