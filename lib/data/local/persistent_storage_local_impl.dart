import 'package:reactiva/data/persistent_storage_repository.dart';

class PersistentStorageLocalImpl extends PersistentStorageRepository {
  @override
  Future<bool> isDarkMode() async {
    await Future.delayed(const Duration(seconds: 2));
    return false;
  }

  @override
  Future<void> updateDarkMode(bool isDarkMode) async {
    await Future.delayed(const Duration(milliseconds: 50));
    return;
  }
}
