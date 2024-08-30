import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:test_project/core/config/constants/hive_boxes.dart';
import 'package:test_project/core/config/theme/base_theme.dart';

enum AppTheme { Light, Dark }

class ThemeController extends GetxController {
  ThemeController() {
    final themeIndex =
        box.get(HiveBoxConstants.theme.value, defaultValue: 0) as int;
    _currentTheme.value = AppTheme.values[themeIndex];
  }
  // Reactive property for current theme
  final _currentTheme = AppTheme.Light.obs;

  final Box<dynamic> box = Hive.box(HiveBoxConstants.theme.value);

  ///Get current theme
  AppTheme get currentTheme => _currentTheme.value;

  ///Set Theme Method
  void setTheme(AppTheme theme) {
    _currentTheme.value = theme;
    box.put(HiveBoxConstants.theme.value, theme.index);
  }

  ///Get Theme Data
  ThemeData getThemeData() {
    switch (_currentTheme.value) {
      case AppTheme.Light:
        return Themes().lightTheme;
      case AppTheme.Dark:
        return Themes().darkTheme;
      default:
        return Themes().lightTheme;
    }
  }

  ///Switch Theme method
  void switchTheme() {
    _currentTheme.value =
        _currentTheme.value == AppTheme.Light ? AppTheme.Dark : AppTheme.Light;
    box.put(HiveBoxConstants.theme.value, _currentTheme.value.index);
  }

  ///isDarkMode bool value
  bool isDarkMode() => _currentTheme.value == AppTheme.Dark;
}
