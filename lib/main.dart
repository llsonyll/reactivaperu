import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/switch_theme_cubit.dart';

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
    return BlocProvider(
      create: (_) => SwitchThemeCubit()..init(),
      child: BlocBuilder<SwitchThemeCubit, bool>(builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Reactiva Home',
          theme: snapshot ? lightTheme : darkTheme,
          routes: {
            'login': (BuildContext context) => LoginPage(),
            'splash': (BuildContext context) => Splash(),
          },
          initialRoute: 'splash',
        );
      }),
    );
  }
}
