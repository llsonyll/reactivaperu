import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buscador extends StatelessWidget {
  const Buscador({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.black),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Buscar',
          suffixIcon: InkWell(
            onTap: () {},
            child: FaIcon(
              FontAwesomeIcons.search,
              size: 25.0,
              color: Colors.black,
            ),
          ),
          suffixIconConstraints:
              BoxConstraints.expand(height: 30.0, width: 30.0),
        ),
      ),
    );
  }
}
