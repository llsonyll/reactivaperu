import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/checkout/checkout.dart';
import 'package:reactiva/domain/models/producto.dart';
import 'package:reactiva/navigator_utils.dart';

class CarritoDeCompras extends StatelessWidget {
  const CarritoDeCompras({
    Key key,
    @required this.itemsEnCarrito,
  }) : super(key: key);

  final List<Producto> itemsEnCarrito;

  @override
  Widget build(BuildContext context) {
    double iconSize = 24;
    return InkWell(
      onTap: () {
        pushToPage(context, CheckOut(itemsEnCarrito: itemsEnCarrito));
      },
      child: Container(
        width: iconSize * 2,
        height: iconSize * 2,
        color: Colors.purple,
        child: Center(
          child: Stack(
            children: [
              FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: Colors.white,
                size: iconSize,
              ),
              itemsEnCarrito.length != 0
                  ? Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2.5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          itemsEnCarrito.length.toString(),
                          style: TextStyle(
                            fontSize: iconSize / 2,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : const FittedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
