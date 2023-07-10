import 'package:flutter/material.dart';

import '../src/securecred_app.dart';

class NotificationHelper {
  static void showSnackBar({
    // required dynamic context,
    required String label,
    Duration duration = const Duration(seconds: 2),
    String disabledText = 'Close',
    Color disabledTextColor = Colors.black,
    Color disabledColor = Colors.blue,
    Color labelColor = Colors.white,
    Color backgroundColor = Colors.black,
  }) {
    ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
      SnackBar(
        duration: duration,
        behavior: SnackBarBehavior.floating,
        content: Text(
          label,
          style: TextStyle(
            color: labelColor,
          ),
        ),
        backgroundColor: backgroundColor,
        action: SnackBarAction(
          label: disabledText,
          onPressed: () {
            ScaffoldMessenger.of(navigatorKey.currentState!.context)
                .hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  static showDialogBox({
    required String title,
  }) {
    showDialog(
        context: navigatorKey.currentState!.context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(title),
          );
        });
  }
}