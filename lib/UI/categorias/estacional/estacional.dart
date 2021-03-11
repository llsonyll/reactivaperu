import 'package:flutter/material.dart';

class EstacionalPage extends StatelessWidget {
  const EstacionalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Center(
        child: Text('Estacional'),
      ),
    );
  }
}
