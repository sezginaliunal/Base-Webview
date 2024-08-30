import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  NetworkController() {
    // Bağlantı durumunda değişiklikleri dinler
    _connectivity.onConnectivityChanged.listen((result) {
      // Bağlantı durumunu günceller
      isOnline.value = _isOnline(result.first);
    });

    // İlk bağlantı durumunu kontrol et
    _initConnectivity();
  }
  final Connectivity _connectivity = Connectivity();

  // Reaktif değişken, bağlantı durumunu saklar
  RxBool isOnline = false.obs;

  // Bağlantı durumunu kontrol eden metod
  Future<bool> isConnected() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return _isOnline(connectivityResult.first);
  }

  // Bağlantı durumunu kontrol eden yardımcı metod
  bool _isOnline(ConnectivityResult connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.none:
        return false;
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.mobile:
      case ConnectivityResult.vpn:
        return true;
      default:
        return false;
    }
  }

  // İlk bağlantı durumunu kontrol eden metod
  Future<void> _initConnectivity() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    isOnline.value = _isOnline(connectivityResult.first);
  }

  @override
  void onClose() {}
}
