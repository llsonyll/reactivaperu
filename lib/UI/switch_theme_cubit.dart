import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/data/persistent_storage_repository.dart';

class SwitchThemeCubit extends Cubit<bool> {
  SwitchThemeCubit(this._persistentStorageRepository) : super(false);

  final PersistentStorageRepository _persistentStorageRepository;

  bool _isDark = false;
  bool get isDark => _isDark;

  Future<void> init() async {
    // verify storage > guardar dato en local para que el tema persista en memoria
    _isDark = await _persistentStorageRepository.isDarkMode();
    emit(_isDark);
  }

  Future<void> updateTheme(bool isDarkMode) async {
    _isDark = isDarkMode;
    await _persistentStorageRepository.updateDarkMode(_isDark);
    emit(_isDark);
  }
}
