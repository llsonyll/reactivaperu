import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/categorias/restaurantes/restaurantes_cubit.dart';
import 'package:reactiva/UI/widgets/itemRestauranteReactiva.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';

class RestaurantesPage extends StatelessWidget {
  const RestaurantesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestaurantesCubit()..init(),
      child: Column(children: [
        Container(
          color: Colors.blue,
          height: 50.0,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: 25,
              height: 25,
              child: Center(child: Text('$index')),
            ),
          ),
        ),
        BlocBuilder<RestaurantesCubit, List<Tienda>>(
            builder: (context, snapshot) {
          return snapshot.isEmpty
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                  itemCount: snapshot.length,
                  itemBuilder: (context, index) {
                    final Tienda restaurante = snapshot[index];
                    return ItemRestauranteReactiva(restaurante: restaurante);
                  },
                ));
        }),
      ]),
    );
  }
}
