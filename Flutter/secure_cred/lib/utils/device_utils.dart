import 'package:flutter/material.dart';

class DeviceUtils {
  static double scaledDeviceHeight(BuildContext context, double scale) {
    return MediaQuery.of(context).size.height * scale;
  }

  static double scaledDeviceWidth(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * scale;
  }
}

verticalSpacer(double height) {
  return SizedBox(
    height: height,
  );
}

horizontalSpacer(double width) {
  return SizedBox(
    width: width,
  );
}