import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/producto.dart';

class CheckOutCubit extends Cubit<List<Producto>> {
  CheckOutCubit(this._comprasCarrito) : super([]);

  final List<Producto> _comprasCarrito;

  void init() {
    _comprasCarrito.forEach((element) => state.add(element));
    emit(List<Producto>.from(state));
  }
}
