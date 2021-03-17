import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';
import 'package:reactiva/domain/test_data/test_data.dart';

class RestaurantesCubit extends Cubit<List<Tienda>> {
  RestaurantesCubit() : super([]);

  void init() async {
    await Future.delayed(const Duration(seconds: 2));
    for (var tienda in tiendaRestaurantes) {
      state.add(tienda);
    }
    emit(List<Tienda>.from(state));
  }
}
