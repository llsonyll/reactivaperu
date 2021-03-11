import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarritoDeCompras extends StatelessWidget {
  const CarritoDeCompras({Key key, this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    double iconSize = 24;
    return InkWell(
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
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    fontSize: iconSize / 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
