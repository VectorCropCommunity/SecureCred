import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/core/images.dart';
import '../../../utils/router_helper.dart';

class ScreenStartOnboarding extends StatelessWidget {
  const ScreenStartOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 242, 230, 1),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              KImage.oTPAuthenticationSecurity,
              height: screenHight * 1.2,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            // const SizedBox(
            //   height: 70,
            // ),
            Image.asset(KImage.threeDotIconImage1),
            // const SizedBox(
            //   height: 30,
            // ),
            Text(
              'Secure your secrets\nEmpower your development',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            // const SizedBox(
            //   height: 60,
            // ),
            InkWell(
              onTap: () => Routes.pushNamed(Routes.onboarding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const Icon(Icons.arrow_forward_outlined)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
