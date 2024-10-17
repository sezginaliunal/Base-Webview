import 'package:base_webview/app/features/home/home_controller.dart';
import 'package:base_webview/core/components/lottie.dart';
import 'package:base_webview/core/config/constants/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.handleWillPop,
      child: SafeArea(
        child: Scaffold(
          body: Obx(() {
            if (controller.loading.value) {
              return Center(
                child: SizedBox(
                  width: Get.width / 3,
                  child: LottieAssetManager(
                    lottiePath: LottieItems.loading.getPath(),
                  ),
                ),
              );
            } else {
              // Yükleme tamamlandıysa WebView'ı göster
              return WebViewWidget(controller: controller.webViewController);
            }
          }),
        ),
      ),
    );
  }
}
