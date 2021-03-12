import 'package:flutter_bloc/flutter_bloc.dart';

class ProductoCantidadCubit extends Cubit<int> {
  ProductoCantidadCubit() : super(1);

  void incrementarCantidad() {
    emit(state + 1);
  }

  void reducirCantidad() {
    if (state > 1) {
      emit(state - 1);
    } else {
      emit(state);
    }
  }
}

class ProductoPrecioCubit extends Cubit<double> {
  ProductoPrecioCubit(double precio) : super(0.0);
}
