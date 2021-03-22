import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * .15,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Center(
        child: Text(
          'Reactiva Peru',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            // color: reactiva_golden,
            fontSize: 32.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
