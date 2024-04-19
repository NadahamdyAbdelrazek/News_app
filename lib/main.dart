import 'package:flutter/material.dart';

import 'layout/Home_Screen.dart';
import 'layout/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,initialRoute:SplashScreen.routename ,routes: {
      SplashScreen.routename:(context) => SplashScreen(),
      HomeScreen.routename:(context) => HomeScreen(),


    },);
  }
}

