import 'package:flutter/material.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  // await configureInjection();
  // await Prefs.init();
  runApp(const AppProvidersLayer(
      child: KwikNKleenApp(),
    ));
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}