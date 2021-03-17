import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/producto.dart';

class CarritoItemsCubit extends Cubit<List<Producto>> {
  CarritoItemsCubit() : super([]);

  void addItemToCart() {}

  void deleteItemFromCart() {}
}
