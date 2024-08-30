import 'package:base_webview/core/config/constants/api_urls.dart';
import 'package:base_webview/core/services/network/url_launcher.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeController extends GetxController {
  late final WebViewController _webViewController;
  WebViewController get webViewController => _webViewController;
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    setWebViewController();
  }

  Future<void> setWebViewController() async {
    loading.value = true;
    _webViewController = WebViewController();

    await _webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);

    await _webViewController.setNavigationDelegate(
      NavigationDelegate(
        onNavigationRequest: goToNavigate,
      ),
    );

    await _webViewController.loadRequest(Uri.parse(AppUrls.baseUrl));

    loading.value = false;
  }

  Future<NavigationDecision> goToNavigate(NavigationRequest request) async {
    if (!request.url.startsWith(AppUrls.baseUrl)) {
      await UrlLauncherHelper.goToUrl(request.url);
      return NavigationDecision.prevent;
    }

    return NavigationDecision.navigate;
  }
}
