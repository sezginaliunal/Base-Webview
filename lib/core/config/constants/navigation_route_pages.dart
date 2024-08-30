import 'package:base_webview/app/features/home/home_bindings.dart';
import 'package:base_webview/app/features/home/home_page.dart';
import 'package:base_webview/app/features/network/network_bindings.dart';
import 'package:base_webview/app/features/network/network_page.dart';
import 'package:base_webview/core/components/unknown_view.dart';
import 'package:base_webview/core/config/constants/navigation_routes.dart';
import 'package:get/get.dart';

class AppRouter {
  // Singleton instance
  factory AppRouter() => _instance;
  AppRouter._privateConstructor();
  static final AppRouter _instance = AppRouter._privateConstructor();

  // GetX'de sayfa rotaları
  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(
        name: RoutesName.UNKNOWN,
        page: () => const UnknownView(),
      ),
      GetPage(
        name: RoutesName.NO_NETWORK,
        page: () => const NoInternet(),
        binding: NetworkBinding(),
      ),
      GetPage(
        name: RoutesName.HOME,
        page: () => const HomePage(),
        binding: HomeBinding(),
      ),
    ];
  }
}
