import 'package:flutter_bloc/flutter_bloc.dart';

class FormParte2 {
  const FormParte2({
    this.emailValidated = false,
    this.firstPasswordValidation = false,
    this.equalsPasswordValidation = false,
  });
  final bool emailValidated;
  final bool firstPasswordValidation;
  final bool equalsPasswordValidation;
}

class RegistroPart2Cubit extends Cubit<FormParte2> {
  RegistroPart2Cubit() : super(FormParte2());

  String firstPassword;
  String secondPassword;

  void validateEmail(String email) {
    if (email.contains('@gmail.com')) {
      print(emailValidated);
    } else {
      // emit(FormParte2(null, emailValidated: false));
    }
  }

  void validateFirstPassword(String password) {
    if (password.contains('numbers')) {
      firstPassword = password;
      emit(this.state..firstPasswordValidation);
    } else {
      firstPassword = '';
      emit(FormParte2(firstPasswordValidation: false));
    }
  }

  void validatePassword(String password) {
    secondPassword = password;
    if (firstPassword == secondPassword && state.firstPasswordValidation) {
      print('pass iguales');
      emit(FormParte2(equalsPasswordValidation: true));
    } else {
      print('pass diferentes');
      emit(FormParte2(equalsPasswordValidation: false));
    }
  }

  void sendData() {
    if (state.emailValidated && state.equalsPasswordValidation) {}
  }
}
