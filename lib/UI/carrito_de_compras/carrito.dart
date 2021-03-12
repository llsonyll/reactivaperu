import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/carrito_de_compras/carrito_cubit.dart';

class CarritoDeCompras extends StatelessWidget {
  const CarritoDeCompras({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 24;
    return BlocProvider(
      create: (_) => CarritoItemsCubit(),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Stack(
            children: [
              FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: Colors.white,
                size: iconSize,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Builder(builder: (context) {
                    return Text(
                      context.read<CarritoItemsCubit>().currentState.toString(),
                      style: TextStyle(
                        fontSize: iconSize / 2,
                        color: Colors.white,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
