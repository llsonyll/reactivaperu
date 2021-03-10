import 'package:flutter/material.dart';
import 'colors.dart';

final lightTheme = ThemeData(
  primaryColor: reactiva_main,
  colorScheme: ColorScheme(
    primary: reactiva_main, //rojo
    primaryVariant: reactiva_main_variant, //blanco
    secondary: reactiva_secundary, //azul oscuro
    secondaryVariant: reactiva_secundary_variant, //azul
    surface: reactiva_negro, // negro > textos
    background: reactiva_blanco,
    error: reactiva_main, // rojo
    onPrimary: reactiva_blanco, //blanco
    onSecondary: reactiva_main, // rojo
    onSurface: reactiva_negro,
    onBackground: reactiva_blanco,
    onError: reactiva_golden,
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: reactiva_blanco,
  appBarTheme: AppBarTheme(
    color: reactiva_main,
  ),
);

final darkTheme = ThemeData(
  primaryColor: reactiva_secundary,
  colorScheme: ColorScheme(
    primary: reactiva_secundary, // azul oscuro
    primaryVariant: reactiva_secundary_variant, // azul
    secondary: reactiva_main, // rojo
    secondaryVariant: reactiva_main_variant, //blanco
    surface: reactiva_blanco, //blanco > textos ?
    background: reactiva_main_variant,
    error: reactiva_golden,
    onPrimary: reactiva_main, // rojo
    onSecondary: reactiva_golden, // dorado
    onSurface: reactiva_blanco,
    onBackground: reactiva_main_variant,
    onError: reactiva_golden,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(
    color: reactiva_secundary,
  ),
);
