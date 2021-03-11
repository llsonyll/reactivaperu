import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categoria {
  const Categoria({
    this.id,
    this.nombre,
    this.icon,
  });

  final int id;
  final String nombre;
  final IconData icon;
}

final List<Categoria> categorias = [
  Categoria(
    id: 0,
    nombre: 'Restaurantes',
    icon: FontAwesomeIcons.hamburger,
  ),
  Categoria(
    id: 1,
    nombre: 'Comercios',
    icon: FontAwesomeIcons.building,
  ),
  Categoria(
    id: 2,
    nombre: 'Salud',
    icon: FontAwesomeIcons.heartbeat,
  ),
  Categoria(
    id: 3,
    nombre: 'Anuncios',
    icon: FontAwesomeIcons.bullhorn,
  ),
  Categoria(
    id: 4,
    nombre: 'Estacional',
    icon: FontAwesomeIcons.gift,
  ),
];
