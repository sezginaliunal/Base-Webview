import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

Future<List<String>> _androidFilePicker(FileSelectorParams params) async {
  final result = await FilePicker.platform.pickFiles();

  if (result != null && result.files.single.path != null) {
    final file = File(result.files.single.path!);
    return [file.uri.toString()];
  }
  return [];
}

Future<void> addFileSelectionListener(WebViewController controller) async {
  if (Platform.isAndroid) {
    final androidController = controller.platform as AndroidWebViewController;
    await androidController.setOnShowFileSelector(_androidFilePicker);
  }
}
