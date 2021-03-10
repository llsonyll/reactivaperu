import 'package:flutter_bloc/flutter_bloc.dart';

class RegistroPart1Cubit extends Cubit<bool> {
  RegistroPart1Cubit() : super(false);

  // final nombresController = TextEditingController();
  // final apellidosController = TextEditingController();
  // final telefonoController = TextEditingController();

  // void onSubmit(){
  //   final nombres = nombresController.text;
  //   final apellidos = apellidosController.text;
  //   final telefono = telefonoController.text;
  // }

  void onValidating(String texto) {
    // To Do : determinar el criterio de seleccion
    if (texto == "123") {
      emit(false);
    } else {
      emit(true);
    }
  }
}
