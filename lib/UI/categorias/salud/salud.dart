import 'package:flutter/material.dart';

class SaludPage extends StatelessWidget {
  const SaludPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
      ),
      child: Center(
        child: Text('Salud'),
      ),
    );
  }
}
