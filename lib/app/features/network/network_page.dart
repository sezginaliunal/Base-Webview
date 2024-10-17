import 'package:base_webview/core/components/lottie.dart';
import 'package:base_webview/core/config/constants/app_strings.dart';
import 'package:base_webview/core/config/constants/lottie.dart';
import 'package:base_webview/core/config/constants/navigation_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieAssetManager(
                lottiePath: LottieItems.no_internet.getPath(),
              ),
              Text(
                AppStrings.noConnection,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                AppStrings.checkInternet,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w300),
              ),
              ElevatedButton(
                onPressed: () async {
                  await Get.offAllNamed(RoutesName.HOME);
                },
                child: const Text('Yeniden dene'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
