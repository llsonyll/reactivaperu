import 'package:flutter/material.dart';

class LogoReactiva extends StatelessWidget {
  const LogoReactiva({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Reactiva-Peru',
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        // color: reactiva_golden,
        fontSize: 32.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
