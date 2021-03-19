import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/checkout/checkoutcubit.dart';
// import 'package:reactiva/UI/checkout/checkoutcubit.dart';
import 'package:reactiva/domain/models/producto.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key key, this.itemsEnCarrito}) : super(key: key);

  final List<Producto> itemsEnCarrito;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckOutCubit(itemsEnCarrito)..init(),
      child: BlocBuilder<CheckOutCubit, List<Producto>>(
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text('CheckOut'),
            ),
            body: snapshot.length > 0
                ? ListView.builder(
                    itemCount: snapshot.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50.0,
                          color: Colors.blue,
                          height: 50.0,
                          margin: const EdgeInsets.all(10.0),
                          child: Text(
                            'Komooo',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text('Carrito Vacio'),
                  ),
          );
        },
      ),
    );
  }
}
