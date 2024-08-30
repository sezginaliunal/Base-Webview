import 'package:base_webview/core/config/constants/app_strings.dart';
import 'package:base_webview/core/utils/show_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static Future<void> goToUrl(String url) async {
    try {
      if (!await launchUrl(Uri.parse(url))) {}
    } catch (e) {
      ShowErrorDialog.myErrorSnackBar(
        AppStrings.error,
        AppStrings.couldNotLaunch,
      );
    }
  }
}
