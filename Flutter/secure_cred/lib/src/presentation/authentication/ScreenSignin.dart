import 'package:flutter/material.dart';

class ScreenSignin extends StatelessWidget {
  const ScreenSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Signin"),
        ),
      ),
    );
  }
}
