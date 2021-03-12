import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/producto/producto.dart';
import 'package:reactiva/navigator_utils.dart';

import 'tienda_cubit.dart';

class TiendaPage extends StatelessWidget {
  const TiendaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TiendaCubit()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text('Nombre Restaurante'),
              Text(
                'Direccion de envio',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 175,
                    decoration: BoxDecoration(
                      color: Colors.orange,
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
                          onPressed: () {},
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
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        width: 50.0,
                        height: 25.0,
                        color: Colors.black45,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10.0),
                    Text('Titulo sub-categoria'),
                    const SizedBox(height: 10.0),
                    ItemTienda(),
                    ItemTienda(),
                    const SizedBox(height: 10.0),
                    Text('Titulo sub-categoria'),
                    const SizedBox(height: 10.0),
                    ItemTienda(),
                    ItemTienda(),
                    const SizedBox(height: 10.0),
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

class ItemTienda extends StatelessWidget {
  const ItemTienda({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: () {
          pushToPage(context, ProductoPage());
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
                          Text('Nombre Producto'),
                          Text('Descripcion Producto'),
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
                child: Container(
                  height: 150,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
