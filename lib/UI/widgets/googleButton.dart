import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/common/colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key key,
    this.widgetRoute,
  }) : super(key: key);

  final Widget widgetRoute;

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
          color: reactiva_blanco,
          border: Border.all(color: google_font_color),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: Colors.black12,
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.google,
                color: google_font_color,
              ),
              const SizedBox(width: 10.0),
              Text(
                'continuar con Google',
                style: TextStyle(
                  color: google_font_color,
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
