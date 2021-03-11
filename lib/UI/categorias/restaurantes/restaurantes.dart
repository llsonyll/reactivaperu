import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/carrito_de_compras/carrito_cubit.dart';
import 'package:reactiva/UI/tienda/tienda.dart';
import 'package:reactiva/navigator_utils.dart';

class RestaurantesPage extends StatelessWidget {
  const RestaurantesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarritoItemsCubit(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      pushToPage(context, TiendaPage());
                    },
                    child: Text('ir A Restaurante'),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      context.read<CarritoItemsCubit>().incrementar();
                    },
                    child: Text('Quitar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
