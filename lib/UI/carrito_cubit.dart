import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/producto.dart';

class CarritoCubit extends Cubit<List<Producto>> {
  CarritoCubit() : super([]);

  List<Producto> get carritoItems => state.where((event) => true).toList();
  List<Producto> get currentState => state;

  void agregarProductoCarrito(Producto producto) {
    // final existe = state.where((element) => producto.idProducto == element.idProducto);
    state.add(producto);
    emit(List<Producto>.from(state));
  }

  void eliminarProductoCarrito(Producto producto) {
    if (state.isEmpty) {
      print('lista vacia');
      emit(List<Producto>.from(state));
    } else {
      final index = state
          .indexWhere((element) => producto.idProducto == element.idProducto);
      state.removeAt(index);
      emit(List<Producto>.from(state));
    }
  }
}
