import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'configuracion_cubit.dart';
import '../../../switch_theme_cubit.dart';

class Configuration extends StatelessWidget {
  const Configuration({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ConfigurationThemeCubit(context.read<SwitchThemeCubit>().isDark)
            ..init(),
      child: BlocConsumer<ConfigurationThemeCubit, bool>(
        listener: (context, snapshot) => print(snapshot),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Configuracion'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Cambiar tema'),
                  Switch(
                    value: snapshot,
                    onChanged: (bool value) {
                      context.read<ConfigurationThemeCubit>().switchTheme();
                      context.read<SwitchThemeCubit>().updateTheme(value);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
