# base_webview

A new Flutter project.

## Getting Started

Eğer dosya yükleme işlemleri var ise:
 İmport et  = import 'package:file_picker/file_picker.dart';

 Bir servis sınıfı oluştur ve bu kodu ekle .

   <!-- Future<List<String>> _androidFilePicker(FileSelectorParams params) async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      final file = File(result.files.single.path!);
      return [file.uri.toString()];
    }
    return [];
  }

  void addFileSelectionListener(WebViewController controller) async {
    if (Platform.isAndroid) {
      final androidController = controller.platform as AndroidWebViewController;
      await androidController.setOnShowFileSelector(_androidFilePicker);
    }
  } -->
    <!-- Temel izinler -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

    <!-- Kamera ve ses ile ilgili izinler -->
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <!-- Depolama izinleri (Scoped Storage kullanıyorsanız gerekebilir) -->
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />

    <!-- Diğer izinler -->
    <uses-permission android:name="android.permission.VIBRATE" />
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />

    <!-- Reklam izni -->
    <uses-permission android:name="com.google.android.gms.permission.AD_ID" />

    <!-- Kamera özelliği -->
    <uses-feature android:name="android.hardware.camera" android:required="false" />
<!-- <?xml version="1.0" encoding="utf-8"?>
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <!-- Uygulamanın özel dosya dizini -->
    <files-path
        name="internal_files"
        path="." />

    <!-- Uygulamanın önbellek dizini -->
    <cache-path
        name="cache_files"
        path="." />

    <!-- Belirli bir dizindeki dosyalar -->
    <external-path
        name="external_files"
        path="Download/" />
</paths> -->