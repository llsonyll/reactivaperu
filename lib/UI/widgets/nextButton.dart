import 'package:flutter/material.dart';
// import 'package:reactiva/src/UI/home.dart';
// import 'package:reactiva/src/UI/home_alpha.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/navigator_utils.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
    @required this.nextWidget,
    this.label,
  }) : super(key: key);

  // Actualizar ruta >>
  final Widget nextWidget;
  final String label;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        pushToPage(context, nextWidget);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        width: size.width * .65,
        decoration: BoxDecoration(
            color: reactiva_success,
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(2.0, 2.0),
                color: Colors.black38,
                blurRadius: 5.0,
              ),
            ]),
        child: Center(
          child: Text(
            label ?? 'Continuar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
