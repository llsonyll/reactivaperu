import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/tienda/tienda.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';
import 'package:reactiva/navigator_utils.dart';

class ItemRestauranteReactiva extends StatelessWidget {
  const ItemRestauranteReactiva({
    Key key,
    @required this.restaurante,
  }) : super(key: key);

  final Tienda restaurante;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 8.0, right: 8.0),
      child: InkWell(
        onTap: () {
          pushToPage(context, TiendaPage(tienda: restaurante));
        },
        child: Stack(
          children: [
            Hero(
              tag: restaurante.idTienda,
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
                  title: Text(restaurante.nombre),
                  subtitle: Text('Costo de envio'),
                  trailing: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.infoCircle,
                      color: Colors.black,
                    ),
                    onPressed: () {},
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
