import 'package:flutter/material.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/UI/registro/registro_form_1.dart';
import 'package:reactiva/UI/widgets/facebookButton.dart';
import 'package:reactiva/UI/widgets/googleButton.dart';
import 'package:reactiva/UI/widgets/logoReactiva.dart';
import 'package:reactiva/UI/widgets/nextButton.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: EdgeInsets.only(top: size.height * .1),
        child: Column(
          children: [
            Text(
              'Empezemos, empezemos por\nunirte a nuestra comunidad de usuarios',
              style: TextStyle(
                color: reactiva_blanco,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            LogoReactiva(),
            const SizedBox(height: 30.0),
            NextButton(nextWidget: RegistroFormFirst(), label: 'Registro'),
            const SizedBox(height: 80.0),
            Container(
              width: double.infinity,
              height: size.height * .4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryVariant,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.width * .5),
                  topRight: Radius.circular(size.width * .5),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * .08),
                    FacebookButton(),
                    SizedBox(height: size.height * .04),
                    GoogleButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
