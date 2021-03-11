import 'package:flutter/material.dart';

class AnunciosPage extends StatelessWidget {
  const AnunciosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
        child: Text('Anuncios'),
      ),
    );
  }
}
