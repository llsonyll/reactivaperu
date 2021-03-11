import 'package:flutter_bloc/flutter_bloc.dart';

enum LoginState { none, userExist }

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.none);

  Future<void> logIn() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginState.userExist);
  }

  Future<void> logInFacebook() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginState.userExist);
  }

  Future<void> logInGoogle() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginState.userExist);
  }

  Future<void> logInIOS() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginState.userExist);
  }

  Future<void> logOut() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginState.none);
  }
}

class EmailCubit extends Cubit<bool> {
  EmailCubit() : super(false);

  void validateEmail(String email) {
    if (!email.contains('@gmail.com')) {
      emit(false);
    } else {
      emit(true);
    }
  }
}

class PasswordCubit extends Cubit<bool> {
  PasswordCubit() : super(false);

  void validatePassword(String password) {
    if (password.length <= 6) {
      emit(false);
    } else {
      emit(true);
    }
  }
}
