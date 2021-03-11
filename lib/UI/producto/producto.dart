import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * .3,
                  color: Colors.orangeAccent,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.timesCircle),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
