import 'dart:async';
import 'package:flutter/material.dart';
import 'package:secure_cred/src/core/images.dart';
import '../../../utils/router_helper.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  double progressValue = 0.0;
  @override
  void initState() {
    super.initState();
    startIncrement();
  }

  void startIncrement() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        if (progressValue < 1.0) {
          progressValue += 0.01;
        } else {
          timer.cancel();
          Navigator.pushNamed(context, Routes.onboardingStart);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 100],
              colors: [
                Color.fromRGBO(215, 0, 36, 1),
                Color.fromRGBO(80, 0, 13, 1),
              ],
            ),
          ),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(
              KImage.logoSecureCred,
              width: screenWidth / 2.8,
              height: screenHight / 3.1,
            ),
            SizedBox(
              width: screenWidth/5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: const Color.fromRGBO(217, 217, 217, 0.45),
                  valueColor: const AlwaysStoppedAnimation<Color>(Color.fromRGBO(217, 217, 217, 1)),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
