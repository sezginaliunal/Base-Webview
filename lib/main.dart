import 'package:flutter/material.dart';
import 'package:test_project/app.dart';
import 'package:test_project/core/config/di/init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runApp(
    const MyApp(),
  );
}
