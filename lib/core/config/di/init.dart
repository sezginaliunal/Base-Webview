import 'package:base_webview/app/features/network/network_controller.dart';
import 'package:base_webview/core/config/constants/hive_boxes.dart';
import 'package:base_webview/core/config/theme/theme_controller.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> setupLocator() async {
  await Hive.initFlutter();
  await Hive.openBox(HiveBoxConstants.theme.value);
  Get
    ..lazyPut<ThemeController>(ThemeController.new)
    ..lazyPut<NetworkController>(NetworkController.new);
}
