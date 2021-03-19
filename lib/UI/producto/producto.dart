import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/carrito_cubit.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/UI/producto/producto_cubit.dart';
import 'package:reactiva/domain/models/producto.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({Key key, this.producto}) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductoCantidadCubit()),
      ],
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Material(
                    child: Hero(
                      tag: producto.idProducto,
                      child: Container(
                        width: double.infinity,
                        height: size.height * .3,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.timesCircle),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      right: 10,
                      top: 10,
                      child: Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: size.height * .6,
                            width: double.infinity,
                            child: BlocBuilder<ProductoCantidadCubit, int>(
                                builder: (context, snapshot) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Producto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(producto.nombre),
                                  const SizedBox(height: 20.0),
                                  Text(
                                    'Descripcion del producto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(producto.descripcion),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Cantidad'),
                                      Row(
                                        children: [
                                          IconButton(
                                            // padding: const EdgeInsets.all(4.0),
                                            icon: FaIcon(
                                                FontAwesomeIcons.minusCircle),
                                            onPressed: () {
                                              context
                                                  .read<ProductoCantidadCubit>()
                                                  .reducirCantidad();
                                            },
                                          ),
                                          Text(snapshot.toString()),
                                          IconButton(
                                            // padding: const EdgeInsets.all(4.0),
                                            icon: FaIcon(
                                                FontAwesomeIcons.plusCircle),
                                            onPressed: () {
                                              context
                                                  .read<ProductoCantidadCubit>()
                                                  .incrementarCantidad();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25.0),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total'),
                                        Text(
                                            'S/${(producto.precio * snapshot).toStringAsFixed(2)}'),
                                      ],
                                    ),
                                  ),

                                  // Spacer(),
                                  // Text('Extras'),
                                  // Align(
                                  //   alignment: Alignment.bottomCenter,
                                  //   child: Container(
                                  //     width: double.infinity,
                                  //     height: 100,
                                  //     color: Colors.blue,
                                  //   ),
                                  // ),
                                ],
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width / 2 - size.width * .4 / 2,
                      bottom: size.height * .025,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                            context
                                .read<CarritoCubit>()
                                .addItemToCart(producto);
                          },
                          child: Container(
                            height: size.height * .05,
                            width: size.width * .4,
                            child: Center(
                              child: Text(
                                'Añadir al Carrito',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: reactiva_success,
                              borderRadius: BorderRadius.circular(3.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2.5, 2.5),
                                  color: Colors.black26,
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
