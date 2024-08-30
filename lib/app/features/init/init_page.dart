import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/features/init/init_controller.dart';
import 'package:test_project/core/config/theme/theme_controller.dart';

class InitPage extends GetView<InitController> {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: themeController.switchTheme,
          icon: Obx(
            () => Icon(
              themeController.currentTheme == AppTheme.Dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          ),
        ),
      ),
    );
  }
}
