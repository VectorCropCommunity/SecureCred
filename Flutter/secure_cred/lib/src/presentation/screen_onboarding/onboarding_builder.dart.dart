import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_cred/src/presentation/screen_onboarding/widgets/onboarding_screen2.dart';
import 'package:secure_cred/src/presentation/screen_onboarding/widgets/onboarding_screen3.dart';
import 'package:secure_cred/utils/router_helper.dart';
import 'package:secure_cred/utils/shared_preference/shared_preference.dart';
import 'package:secure_cred/utils/shared_preference/shared_preference_key.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOnboarding extends StatelessWidget {
  const ScreenOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  ScreenOnboardingWidget1(),
                  ScreenOnboardingWidget2()
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 2,
                  effect: const WormEffect(
                    activeDotColor: Colors.black,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Prefs.setBool(SharedPreferenceKeys.onBoardingViewed, true);
                    Routes.pushNamed(Routes.login);
                  },
                  child: Text(
                    'Skip',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
