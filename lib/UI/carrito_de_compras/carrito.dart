import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarritoDeCompras extends StatelessWidget {
  const CarritoDeCompras({
    Key key,
    @required this.itemsEnCarrito,
  }) : super(key: key);

  final int itemsEnCarrito;

  @override
  Widget build(BuildContext context) {
    double iconSize = 24;
    return InkWell(
      onTap: () {},
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
              itemsEnCarrito != 0
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
                          itemsEnCarrito.toString(),
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
