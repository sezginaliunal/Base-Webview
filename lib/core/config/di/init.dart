import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_project/core/config/constants/hive_boxes.dart';
import 'package:test_project/core/config/theme/theme_controller.dart';

Future<void> setupLocator() async {
  await Hive.initFlutter();
  await Hive.openBox(HiveBoxConstants.theme.value);
  Get.lazyPut<ThemeController>(ThemeController.new);
}
