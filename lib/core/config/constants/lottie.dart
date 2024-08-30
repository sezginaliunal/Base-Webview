enum LottieItems {
  error,
  loading,
  no_internet,
}

extension LottieItemsExtension on LottieItems {
  String get rawValue {
    switch (this) {
      case LottieItems.error:
        return 'error';
      case LottieItems.loading:
        return 'loading';
      case LottieItems.no_internet:
        return 'no_internet';
    }
  }

  String getPath() => 'assets/animation/$rawValue.json';
}
