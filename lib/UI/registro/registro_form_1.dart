import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/UI/registro/registro_form_1_cubit.dart';
import 'package:reactiva/UI/registro/registro_form_2.dart';
import 'package:reactiva/UI/widgets/logoReactiva.dart';
import 'package:reactiva/navigator_utils.dart';

import '../../navigator_utils.dart';

class RegistroFormFirst extends StatefulWidget {
  const RegistroFormFirst({Key key}) : super(key: key);

  @override
  _RegistroFormFirstState createState() => _RegistroFormFirstState();
}

class _RegistroFormFirstState extends State<RegistroFormFirst> {
  // Controladores de cajas de texto
  TextEditingController nombres;
  TextEditingController apellidos;
  TextEditingController telefono;

  @override
  void initState() {
    super.initState();
    nombres = TextEditingController();
    apellidos = TextEditingController();
    telefono = TextEditingController();
  }

  @override
  void dispose() {
    nombres.dispose();
    apellidos.dispose();
    telefono.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegistroPart1Cubit(),
      child: BlocConsumer<RegistroPart1Cubit, bool>(
          listener: (context, snapshot) {},
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                title: LogoReactiva(),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        // posible animacion
                        snapshot
                            ? pushToPage(context, RegistroFormSecond())
                            : print('');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: snapshot
                                ? Colors.white
                                : Colors.white.withOpacity(.5),
                          ),
                          Text(
                            'siguiente',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: snapshot
                                  ? Colors.white
                                  : Colors.white.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                child: Column(
                  children: [
                    SimpleTextField(
                      controller: nombres,
                      label: 'Nombres',
                      hintText: 'Reactiva - Peru',
                    ),
                    SimpleTextField(
                      label: 'Apellidos',
                      hintText: 'Reactivate - Peru',
                      controller: apellidos,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Celular',
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextField(
                              controller: telefono,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '999112233',
                              ),
                              onChanged: (texto) {
                                context
                                    .read<RegistroPart1Cubit>()
                                    .onValidating(telefono.text);
                              },
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          snapshot
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
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key key,
    @required this.controller,
    @required this.label,
    @required this.hintText,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final String hintText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
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
              keyboardType: textInputType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
              onChanged: (texto) {},
            ),
          ),
        ],
      ),
    );
  }
}
