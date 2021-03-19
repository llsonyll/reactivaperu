import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/producto.dart';

class CarritoItemsCubit extends Cubit<List<Producto>> {
  CarritoItemsCubit() : super([]);

  List<Producto> get items => state.where((event) => true).toList();

  void addItemToCart(Producto producto) {
    state.add(producto);
    emit(List<Producto>.from(state));
  }

  void addProductoToCart(Producto producto) {
    state.add(producto);
  }

  void deleteItemFromCart() {
    if (state.isEmpty) {
      print('lista vacia');
    } else {
      print('lista con Items');
    }
  }
}
