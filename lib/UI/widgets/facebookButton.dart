import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/common/colors.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key key,
    this.nextRoute,
  }) : super(key: key);

  // Actualizar ruta >>
  final Widget nextRoute;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //     MaterialPageRoute(builder: (_) => nextRoute ?? Home()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        width: size.width * .65,
        decoration: BoxDecoration(
          color: facebook_logo_color,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: Colors.black38,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.facebookSquare,
                color: Colors.white,
              ),
              const SizedBox(width: 10.0),
              Text(
                'continuar con Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
