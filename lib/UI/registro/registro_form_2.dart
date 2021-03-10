import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/UI/registro/registro_form_2_cubit.dart';
import 'package:reactiva/UI/widgets/logoReactiva.dart';

class RegistroFormSecond extends StatelessWidget {
  const RegistroFormSecond({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegistroPart2Cubit>(create: (_) => RegistroPart2Cubit()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: LogoReactiva(),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_forward_sharp),
                    Text(
                      'finalizar',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
          child: Column(
            children: [
              BlocConsumer<RegistroPart2Cubit, FormParte2>(
                listener: (context, snapshot) => print(snapshot),
                builder: (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.surface,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'sony_s07@hotmail.es',
                            ),
                            onChanged: (texto) {
                              context
                                  .read<RegistroPart2Cubit>()
                                  .validateEmail(texto);
                            },
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        snapshot.emailValidated
                            ? Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'datos validos',
                                  style: TextStyle(
                                    color: reactiva_success,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'datos invalidos',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.error,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
              BlocConsumer<RegistroPart2Cubit, FormParte2>(
                listener: (context, snapshot) => print(snapshot),
                builder: (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.surface,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '*********',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye_outlined),
                                onPressed: () {},
                              ),
                            ),
                            onChanged: (texto) {
                              context
                                  .read<RegistroPart2Cubit>()
                                  .validateFirstPassword(texto);
                            },
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        snapshot.firstPasswordValidation
                            ? Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'datos validos',
                                  style: TextStyle(
                                    color: reactiva_success,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'datos invalidos',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.error,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
