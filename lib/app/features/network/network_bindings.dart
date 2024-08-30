import 'package:base_webview/app/features/network/network_controller.dart';
import 'package:get/get.dart';

class NetworkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(NetworkController.new);
  }
}
