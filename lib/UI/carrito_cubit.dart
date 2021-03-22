import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/check_out_product.dart';
import 'package:reactiva/domain/models/producto.dart';

class CarritoCubit extends Cubit<List<CheckOutProduct>> {
  CarritoCubit() : super([]);

  // List<Producto> get carritoItems => state.where((event) => true).toList();

  void agregarProductoCarrito(Producto producto, int cantidad) {
    final buscarItem = state.where((item) => item.producto == producto);
    if (buscarItem.isEmpty) {
      final checkOutItem =
          CheckOutProduct(producto: producto, cantidad: cantidad);
      state.add(checkOutItem);
      emit(List<CheckOutProduct>.from(state));
    } else {
      final index = state.indexWhere((item) => item.producto == producto);
      state[index] = CheckOutProduct(
          producto: state[index].producto,
          cantidad: state[index].cantidad + cantidad);
      emit(List<CheckOutProduct>.from(state));
    }
  }

  void eliminarProductoCarrito(Producto producto) {
    if (state.isEmpty) {
      emit(List<CheckOutProduct>.from(state));
    } else {
      final index = state.indexWhere((element) => producto == element.producto);
      state.removeAt(index);
      emit(List<CheckOutProduct>.from(state));
    }
  }
}
