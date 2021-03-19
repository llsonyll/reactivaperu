import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/switch_theme_cubit.dart';
import 'package:reactiva/dependencias.dart';

import 'UI/carrito_cubit.dart';
import 'UI/login/login_page.dart';
import 'UI/common/themes.dart';
import 'UI/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: buildRepositories(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => SwitchThemeCubit(context.read())..init()),
          BlocProvider(create: (context) => CarritoCubit()),
        ],
        child: BlocBuilder<SwitchThemeCubit, bool>(
          builder: (context, snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Reactiva Home',
              theme: snapshot ? darkTheme : lightTheme,
              routes: {
                'login': (BuildContext context) => LoginPage(),
                'splash': (BuildContext context) => Splash(),
              },
              initialRoute: 'splash',
            );
          },
        ),
      ),
    );
  }
}
