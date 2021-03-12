import 'package:flutter_bloc/flutter_bloc.dart';

class CarritoItemsCubit extends Cubit<int> {
  CarritoItemsCubit() : super(0);

  int get currentState => state;

  void incrementar() {
    emit(state + 1);
  }
}
