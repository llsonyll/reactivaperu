import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/checkout/checkout.dart';
import 'package:reactiva/domain/models/check_out_product.dart';
import 'package:reactiva/navigator_utils.dart';

import '../carrito_cubit.dart';

class CarritoDeCompras extends StatelessWidget {
  const CarritoDeCompras({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 24;
    return BlocBuilder<CarritoCubit, List<CheckOutProduct>>(
        builder: (context, snapshot) {
      return InkWell(
        onTap: () {
          pushToPage(context, CheckOut());
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
                snapshot.length != 0
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
                            snapshot.length.toString(),
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
    });
  }
}
