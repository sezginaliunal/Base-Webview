import 'package:base_webview/app/features/network/network_controller.dart';
import 'package:get/get.dart';

Future<void> setupLocator() async {
  Get..lazyPut<NetworkController>(NetworkController.new);
}
