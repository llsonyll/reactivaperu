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
