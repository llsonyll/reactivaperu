import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistroPart2Cubit extends Cubit<bool> {
  RegistroPart2Cubit() : super(false);

  void validateInputs(BuildContext context) {
    final emailValidated = context.read<EmailCubit>().state;
    final passwordValidated = context.read<FirstPasswordCubit>().state;
    final samePasswordValidated = context.read<SecondPasswordCubit>().state;

    if (emailValidated && passwordValidated && samePasswordValidated) {
      emit(true);
    } else {
      emit(false);
    }
  }
}

class EmailCubit extends Cubit<bool> {
  EmailCubit() : super(false);

  String email;

  void readInput(String text) {
    if (text.contains('@gmail.com')) {
      email = text;
      emit(true);
    } else {
      emit(false);
    }
  }
}

class FirstPasswordCubit extends Cubit<bool> {
  FirstPasswordCubit() : super(false);

  String firstPassword;

  void readPassword(String text) {
    if (text.length <= 6) {
      firstPassword = text;
      emit(true);
    } else {
      emit(false);
    }
  }
}

class SecondPasswordCubit extends Cubit<bool> {
  SecondPasswordCubit() : super(false);
  void readPassword(BuildContext context, String text) {
    if (text == context.read<FirstPasswordCubit>().firstPassword) {
      emit(true);
    } else {
      emit(false);
    }
  }
}
