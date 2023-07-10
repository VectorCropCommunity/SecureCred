import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/core/images.dart';
import '../../../core/color.dart';

class ScreenOnboardingWidget1 extends StatelessWidget {
  const ScreenOnboardingWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kcolor.red,
        elevation: 0,
      ),
      body: Column(children: [
        Container(
            width: double.infinity,
            height: screenHight / 1.05,
            color: Kcolor.red,
            child: Image.asset(KImage.agreement)),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Protect Your Documents\nwith SecureCred",
          style:  GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height:15,
        ),
        Text(
          "Let’s create an secure Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo.",
          style:  GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Kcolor.textGrey,
          ),
          textAlign: TextAlign.center,
        ),
      
      
      ]),
    );
  }
}
