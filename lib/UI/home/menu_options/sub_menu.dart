import 'package:flutter/material.dart';

import 'configuracion/configuracion.dart';

class SubMenu {
  const SubMenu({this.nombre, this.descripcion, this.route});

  final String nombre;
  final String descripcion;
  final Widget route;
}

final List<SubMenu> subMenus = [
  SubMenu(nombre: 'Usuario', descripcion: 'Descripcion del menu', route: null),
  SubMenu(nombre: 'Compras', descripcion: 'Descripcion del menu', route: null),
  SubMenu(nombre: 'Anuncios', descripcion: 'Descripcion del menu', route: null),
  SubMenu(
      nombre: 'Configuracion',
      descripcion: 'Descripcion del menu',
      route: Configuration()),
];
