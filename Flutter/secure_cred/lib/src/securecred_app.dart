import 'package:flutter/material.dart';
import 'package:secure_cred/utils/router_helper.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SecureCredApp extends StatelessWidget {
  const SecureCredApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Secure Cred",
      navigatorKey: navigatorKey,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: const Color.fromRGBO(59, 76, 154, 1),
        // primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.system,
      initialRoute: Routes.splash,
    );
  }
}
