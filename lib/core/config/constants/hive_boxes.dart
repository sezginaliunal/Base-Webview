enum HiveBoxConstants { theme }

extension HiveBoxConstantsExtension on HiveBoxConstants {
  String get value {
    switch (this) {
      case HiveBoxConstants.theme:
        return 'theme';
    }
  }
}
