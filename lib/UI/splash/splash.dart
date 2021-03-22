import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'splash_cubit.dart';
import 'package:reactiva/UI/login/login_page.dart';
import 'package:reactiva/UI/registro/registro.dart';
import 'package:reactiva/UI/first_open_page/first_open_page.dart';
import 'package:reactiva/navigator_utils.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => SplashCubit()..init(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, snapshot) {
          if (snapshot == SplashState.none) {
            // First Time User > usuario primera interaccion
            pushAndReplaceToPage(context, FirstOpenPage());
          } else if (snapshot == SplashState.new_user) {
            // New User > usuario nuevo
            pushAndReplaceToPage(context, RegistroPage());
          } else {
            // Existing User > usuario existente
            pushAndReplaceToPage(context, LoginPage());
          }
        },
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/logo_reactiva.svg',
                height: 50.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
