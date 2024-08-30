import 'package:base_webview/app.dart';
import 'package:base_webview/core/config/di/init.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runApp(
    const MyApp(),
  );
}
