import 'package:base_webview/app/features/network/network_bindings.dart';
import 'package:base_webview/core/components/unknown_view.dart';
import 'package:base_webview/core/config/constants/app_infos.dart';
import 'package:base_webview/core/config/constants/navigation_route_pages.dart';
import 'package:base_webview/core/config/constants/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppInfos.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.HOME,
      getPages: AppRouter().getPages(),
      initialBinding: NetworkBinding(),
      unknownRoute: GetPage(
        name: RoutesName.UNKNOWN,
        page: () => const UnknownView(),
      ),
    );
  }
}
