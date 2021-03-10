import 'package:flutter/material.dart';

import '../../navigator_utils.dart';
import '../login/login_page.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key key,
    this.route,
  }) : super(key: key);

  final Widget route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const SizedBox(height: 20.0),
            Text('Cargando'),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                popAndPush(context, route ?? LoginPage());
              },
              child: Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
