import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/carrito_cubit.dart';
import 'package:reactiva/domain/models/producto.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarritoCubit, List<Producto>>(
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text('CheckOut'),
          ),
          body: snapshot.length > 0
              ? ListView.builder(
                  itemCount: snapshot.length,
                  itemBuilder: (context, index) {
                    final Producto producto = snapshot[index];
                    return CheckOutItem(producto: producto);
                  },
                )
              : Center(
                  child: Text('Carrito Vacio'),
                ),
        );
      },
    );
  }
}

class CheckOutItem extends StatelessWidget {
  const CheckOutItem({
    Key key,
    @required this.producto,
  }) : super(key: key);

  final Producto producto;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: ListTile(
        title: Text(producto.nombre),
        subtitle: Text(producto.descripcion),
        trailing: Text('Precio: ${producto.precio}'),
      ),
      children: [
        ListTile(
          title: Text('Detalles'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Cantidad: 3'),
              Text('Extras: si/no'),
            ],
          ),
          trailing: IconButton(
              icon: Icon(Icons.delete_outline_rounded),
              onPressed: () {
                context.read<CarritoCubit>().eliminarProductoCarrito(producto);
              }),
        ),
      ],
    );
  }
}
