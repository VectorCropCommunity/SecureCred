import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String forget_password = '/forget_password';
  static const String reset_password = '/reset_password';
  static const String change_password = '/change_password';
  static const String category = '/category';

  static final routes = {
    login: (_) => const ScreenLogin(),
    signup: (_) => const ScreenSignup(),
    profile: (_) => const ScreenProfile(),
    forget_password: (_) => const ScreenForgetPassword(),
    reset_password: (_) => const ScreenResetPassword(),
    change_password: (_) => const ScreenChangePassword(),
    category: (_) => const ScreenCategory(),
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