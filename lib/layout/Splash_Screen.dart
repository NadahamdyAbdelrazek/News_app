import 'package:flutter/material.dart';


import 'Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routename="splashscreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routename);

    },);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(body: Center(child: Image.asset("assets/images/splash.png")),);
  }
}
