import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchThemeCubit extends Cubit<bool> {
  SwitchThemeCubit() : super(false);

  Future<void> init() async {
    // verify storage > guardar dato en local para que el tema persista en memoria
    emit(true);
  }
}
