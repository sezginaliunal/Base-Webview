enum HiveBoxConstants { theme, jwt }

extension HiveBoxConstantsExtension on HiveBoxConstants {
  String get value {
    switch (this) {
      case HiveBoxConstants.theme:
        return 'theme';
      case HiveBoxConstants.jwt:
        return 'jwt';
    }
  }
}
