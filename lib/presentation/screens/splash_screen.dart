import 'dart:async';

import '/core/app_export.dart';
import '/presentation/screens/on_boarding_screen.dart';
import '/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), openScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstant.gray200,
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }
}