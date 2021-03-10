import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/login/login_page.dart';
import 'package:reactiva/UI/widgets/header.dart';
import 'package:reactiva/UI/widgets/nextButton.dart';

class FirstOpenPage extends StatelessWidget {
  const FirstOpenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Header(),
          Container(
            width: double.infinity,
            height: size.height * .8,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryVariant,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(size.height * .25),
                topRight: Radius.circular(size.height * .25),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 50.0),
                FaIcon(
                  FontAwesomeIcons.store,
                  size: 60,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                Text(
                  'Unete a la red más grande de\ncomercio electronico del\nCusco y del Perú\ncompra facil y seguro',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                NextButton(
                  label: 'Iniciar',
                  nextWidget: LoginPage(),
                ),
                Container(
                  width: double.infinity,
                  height: size.height * .20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, _) => Center(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
