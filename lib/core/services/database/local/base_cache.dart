import 'package:hive_flutter/hive_flutter.dart';

abstract class ICacheManager<T> {
  ICacheManager(this.key);
  final String key;
  Box<T>? box;
  Future<void> init() async {
    registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }

  void registerAdapters();

  Future<void> clearAll() async {
    await box?.clear();
  }

  Future<void> addItems(List<T> items);
  Future<void> putItems(List<T> items);

  T? getItem(String key);
  Future<List<T>?> getValues();

  Future<void> putItem(String key, T item);
  Future<void> removeItem(String key);
}

// class UserCacheManager extends ICacheManager<User> {
//   UserCacheManager(super.key);

//   @override
//   Future<void> addItems(List<User> items) async {
//     await box?.addAll(items);
//   }

//   @override
//   Future<void> putItems(List<User> items) async {
//     await box?.putAll(Map.fromEntries(items.map((e) => MapEntry(e.id, e))));
//   }

//   @override
//   User? getItem(String key) {
//     return box?.get(key);
//   }

//   @override
//   Future<void> putItem(String key, User item) async {
//     await box?.put(key, item);
//   }

//   @override
//   Future<void> removeItem(String key) async {
//     await box?.delete(key);
//   }

//   @override
//   Future<List<User>?> getValues() async {
//     return box?.values.toList();
//   }

//   @override
//   void registerAdapters() {
//     if (!Hive.isAdapterRegistered(HiveConstants.userTypeId)) {
//       Hive.registerAdapter(UserAdapter());
//     }
//   }
// }
