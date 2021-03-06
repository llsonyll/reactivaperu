import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/producto/producto.dart';
import 'package:reactiva/UI/widgets/carrito.dart';
import 'package:reactiva/domain/models/producto.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';
import 'package:reactiva/navigator_utils.dart';

import 'tienda_cubit.dart';

class TiendaPage extends StatelessWidget {
  const TiendaPage({Key key, this.tienda}) : super(key: key);

  final Tienda tienda;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TiendaCubit(tienda)..init()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(tienda.nombre),
              Text(
                'Direccion de envio',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            CarritoDeCompras(),
          ],
        ),
        body: ListView(
          children: [
            BlocBuilder<TiendaCubit, List<Producto>>(
              builder: (context, tiendaProductos) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Hero(
                          tag: tienda.idTienda,
                          child: Container(
                            height: 175,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 75,
                            color: Colors.yellowAccent.withOpacity(.5),
                            child: ListTile(
                              title: Text('Nombre de la tienda'),
                              subtitle: Text('Costo de envio'),
                              trailing: IconButton(
                                icon: FaIcon(FontAwesomeIcons.infoCircle),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                        barrierColor: Colors.black45,
                                        barrierDismissible: true,
                                        opaque: false,
                                        pageBuilder:
                                            (context, animation, builder) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: Dialog(
                                              child: GestureDetector(
                                                onTap:
                                                    Navigator.of(context).pop,
                                                child: RestauranteDetails(
                                                  restaurante: tienda,
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              width: 50.0,
                              height: 25.0,
                              color: Colors.black45,
                            ),
                          );
                        },
                      ),
                    ),
                    tiendaProductos.isEmpty
                        ? CircularProgressIndicator()
                        : Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: tiendaProductos.length,
                              itemBuilder: (context, index) {
                                final Producto producto =
                                    tiendaProductos[index];
                                return ItemTienda(producto: producto);
                              },
                            ),
                          ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RestauranteDetails extends StatelessWidget {
  const RestauranteDetails({
    Key key,
    @required this.restaurante,
  }) : super(key: key);

  final Tienda restaurante;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    restaurante.nombre,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text('Direccion Restaurante'),
                  Text('Telefono Restaurante'),
                  Text('Descripcion Restaurante'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemTienda extends StatelessWidget {
  const ItemTienda({
    Key key,
    @required this.producto,
  }) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: InkWell(
        onTap: () {
          pushToPage(
              context,
              ProductoPage(
                producto: producto,
              ));
        },
        child: Card(
          elevation: 2.0,
          child: Row(
            children: [
              Expanded(
                // Datos del producto
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(producto.nombre),
                          Text(producto.descripcion),
                        ],
                      ),
                      const SizedBox(height: 50.0),
                      Text('Precio Producto'),
                    ],
                  ),
                ),
              ),
              Expanded(
                // Imagen producto
                flex: 2,
                child: Material(
                  child: Hero(
                    tag: producto.idProducto,
                    child: Container(
                      height: 150,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
