import 'package:flutter/material.dart';
// import 'package:reactiva/src/UI/home.dart';
import 'package:reactiva/UI/common/colors.dart';

class Alpha extends StatelessWidget {
  const Alpha({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: reactiva_main,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * .2,
              child: Center(
                child: Text('Test Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
