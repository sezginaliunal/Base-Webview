import 'package:base_webview/core/config/constants/app_colors.dart';
import 'package:get/get.dart';

class ShowErrorDialog {
  static SnackbarController myErrorSnackBar(
    String title,
    String message,
  ) {
    return Get.snackbar(title, message, backgroundColor: AppColor.redColor);
  }
}
