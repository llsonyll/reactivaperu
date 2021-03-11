import 'package:flutter_bloc/flutter_bloc.dart';

class CarritoItemsCubit extends Cubit<int> {
  CarritoItemsCubit() : super(0);

  void incrementar() {
    emit(state + 1);
  }

  void actualizarCantidad(int items) {
    emit(items);
  }
}
