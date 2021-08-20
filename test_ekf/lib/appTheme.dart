import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppTheme {
  static ThemeData getTheme() {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    if (brightness == Brightness.dark) {
      return ThemeData.dark();
    }
    return ThemeData.light();
  }

  static Color getButtonTextColor(context) {
    if (getTheme() == ThemeData.dark()) {
      return Theme.of(context).primaryColor;
    }
    return Colors.white;
  }
}