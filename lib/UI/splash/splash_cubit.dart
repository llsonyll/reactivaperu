import 'package:flutter_bloc/flutter_bloc.dart';

enum SplashState {
  none,
  existing_user,
  new_user,
}

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.none);

  Future<void> init() async {
    // Verify local storage
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashState.existing_user);
  }
}
