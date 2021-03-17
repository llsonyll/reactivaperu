import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/producto.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';
import 'package:reactiva/domain/test_data/test_data.dart';

class TiendaCubit extends Cubit<List<Producto>> {
  TiendaCubit(this.tienda) : super([]);

  final Tienda tienda;

  void init() async {
    await Future.delayed(const Duration(seconds: 2));
    final tiendaProductos = productos
        .where((producto) => producto.idTienda == tienda.idTienda)
        .toList();

    emit(tiendaProductos);
  }
}
