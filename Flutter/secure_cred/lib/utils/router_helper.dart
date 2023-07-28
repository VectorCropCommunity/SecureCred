import 'package:flutter/material.dart';
import 'package:secure_cred/src/presentation/authentication/ScreenSignin.dart';
import 'package:secure_cred/src/presentation/authentication/ScreenSignup.dart';
import 'package:secure_cred/src/presentation/home/ScreemHome.dart';
import 'package:secure_cred/src/presentation/screen_onboarding/onboarding_screen1.dart.dart';
import 'package:secure_cred/src/presentation/splashScreen/screen_splash.dart';
import 'package:secure_cred/src/presentation/profile/profile_screen.dart';
import '../src/presentation/screen_onboarding/onboarding_builder.dart.dart';
import '../src/securecred_app.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String forgetPassword = '/forget_password';
  static const String resetPassword = '/reset_password';
  static const String changePassword = '/change_password';
  static const String category = '/category';
  static const String splash = '/splash';
  static const String onboardingStart = '/onboardingStart';
  static const String onboarding = '/onboarding';
  // static const String bnb = '/bnb';

  static Map<String, Widget Function(BuildContext)> routes = {
    splash: (_) => const ScreenSplash(),
    onboardingStart: (_) => const ScreenStartOnboarding(),
    onboarding: (_) => const ScreenOnboarding(),
    login: (_) => const ScreenSignin(),
    signup: (_) => const ScreenSignup(),
    profile: (_) => const ScreenProfile(),
    home: (_) => ScreenHome(),
    // bnb: () => BottomNavigationWithCenteredFAB(),
    // forget_password: (_) => const ScreenForgetPassword(),
    // reset_password: (_) => const ScreenResetPassword(),
    // change_password: (_) => const ScreenChangePassword(),
    // category: (_) => const ScreenCategory(),final
  };

  static pushPage(Widget page) {
    Navigator.push(navigatorKey.currentState!.context,
        MaterialPageRoute(builder: (context) => page));
  }

  static pushNamed(String route, {arguments}) {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        route) {
      Navigator.pushNamed(
        navigatorKey.currentState!.context,
        route,
        arguments: arguments,
      );
    }
  }

  static pushReplacementNamed(String route, {arguments}) {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        route) {
      Navigator.pushReplacementNamed(
        navigatorKey.currentState!.context,
        route,
        arguments: arguments,
      );
    }
  }

  static dynamic goBack({dynamic result}) {
    return Navigator.maybePop(navigatorKey.currentState!.context, result);
  }

  static goToHome() {
    if (ModalRoute.of(navigatorKey.currentState!.context)?.settings.name !=
        home) {
      Navigator.pushNamed(navigatorKey.currentState!.context, home);
    }
  }

  static void removeAllAndGoToNamed(BuildContext context, String route) {
    if (ModalRoute.of(context)?.settings.name != route) {
      Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
    }
  }
}
