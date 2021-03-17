import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/categorias/categorias_cubit.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/domain/models/tiendas/categoria.dart';

class MenuCategorias extends StatelessWidget {
  const MenuCategorias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriaCubit(),
      child: BlocBuilder<CategoriaCubit, int>(
        builder: (context, snapshot) {
          return Container(
            width: double.infinity,
            height: 75,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categorias.length,
                itemBuilder: (_, index) {
                  final Categoria categoria = categorias[index];
                  return InkWell(
                    onTap: () {
                      context
                          .read<CategoriaCubit>()
                          .updateCategory(categoria.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            categoria.icon,
                            size: 32,
                            color: categoria.id == snapshot
                                ? reactiva_golden
                                : Colors.black,
                          ),
                          Text(
                            categoria.nombre,
                            style: TextStyle(
                              color: categoria.id == snapshot
                                  ? reactiva_golden
                                  : Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
