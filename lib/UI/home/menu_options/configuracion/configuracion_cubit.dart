import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigurationThemeCubit extends Cubit<bool> {
  ConfigurationThemeCubit(this._isDark) : super(false);

  final _isDark;
  bool get isDark => _isDark;

  void init() {
    emit(_isDark);
  }

  void switchTheme() {
    emit(!state);
  }
}
