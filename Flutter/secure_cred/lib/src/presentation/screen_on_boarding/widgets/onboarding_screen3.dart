import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/core/color.dart';
import 'package:secure_cred/src/core/images.dart';

class ScreenOnboardingWidget2 extends StatelessWidget {
  const ScreenOnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kcolor.red,
        elevation: 0,
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: screenHight / 1.05,
              color: Kcolor.red,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Image.asset(
                KImage.group,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Your Password is Safe Here.',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Lets create an secure Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et\ndolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex ea commodo.',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(0, 0, 0, 0.55),
          ),
          textAlign: TextAlign.center,
        ),
       
      ]),
    );
  }
}
