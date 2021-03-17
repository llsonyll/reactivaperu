import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/UI/carrito_de_compras/carrito.dart';
import 'package:reactiva/UI/home/carrito_cubit.dart';
import 'package:reactiva/UI/categorias/anuncios/anuncios.dart';
import 'package:reactiva/UI/categorias/categorias_cubit.dart';
import 'package:reactiva/UI/categorias/comercios/comercios.dart';
import 'package:reactiva/UI/categorias/estacional/estacional.dart';
import 'package:reactiva/UI/categorias/restaurantes/restaurantes.dart';
import 'package:reactiva/UI/categorias/salud/salud.dart';
import 'package:reactiva/UI/common/colors.dart';
import 'package:reactiva/UI/widgets/buscador.dart';
import 'package:reactiva/UI/widgets/logoReactiva.dart';
import 'package:reactiva/UI/widgets/side_menu.dart';
import 'package:reactiva/domain/models/tiendas/categoria.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CategoriaCubit()),
        BlocProvider(create: (context) => CarritoItemsCubit()),
      ],
      child: BlocBuilder<CategoriaCubit, int>(
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: LogoReactiva(),
              centerTitle: true,
              actions: [
                CarritoDeCompras(itemsEnCarrito: 0),
              ],
            ),
            drawer: ReactivaSideMenu(),
            body: Column(
              children: [
                // Lista categorias
                Container(
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
                            // pushToPage(context, categoria.route);
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
                ),
                Buscador(),
                Expanded(
                  child: IndexedStack(
                    index: snapshot,
                    children: [
                      RestaurantesPage(),
                      ComerciosPage(),
                      SaludPage(),
                      AnunciosPage(),
                      EstacionalPage(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
