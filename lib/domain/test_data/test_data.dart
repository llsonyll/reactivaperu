import 'package:reactiva/domain/models/producto.dart';
import 'package:reactiva/domain/models/tiendas/tienda.dart';
import 'package:reactiva/domain/models/user.dart';

// Usuarios Test
List<User> usuariosFake = [
  User(correo: 'usuario1@fake.com', password: 'usuario1', nombre: 'usuario1'),
  User(correo: 'usuario2@fake.com', password: 'usuario2', nombre: 'usuario2'),
  User(correo: 'usuario3@fake.com', password: 'usuario3', nombre: 'usuario3'),
];

// Tiendas Test
List<Tienda> tiendaRestaurantes = [
  Tienda(idTienda: 0, categoria: 0, idSubCategoria: 0, nombre: 'Restaurante 1'),
  Tienda(idTienda: 1, categoria: 0, idSubCategoria: 1, nombre: 'Restaurante 2'),
  Tienda(idTienda: 3, categoria: 0, idSubCategoria: 2, nombre: 'Restaurante 3'),
  Tienda(idTienda: 2, categoria: 0, idSubCategoria: 3, nombre: 'Restaurante 4'),
];

List<Tienda> tiendaComercios = [
  Tienda(idTienda: 0, categoria: 1, nombre: 'Comercio 1'),
  Tienda(idTienda: 1, categoria: 1, nombre: 'Comercio 2'),
  Tienda(idTienda: 2, categoria: 1, nombre: 'Comercio 3'),
  Tienda(idTienda: 3, categoria: 1, nombre: 'Comercio 4'),
];

List<Tienda> tiendaSalud = [
  Tienda(idTienda: 0, categoria: 2, nombre: 'Salud 1'),
  Tienda(idTienda: 1, categoria: 2, nombre: 'Salud 2'),
  Tienda(idTienda: 2, categoria: 2, nombre: 'Salud 3'),
  Tienda(idTienda: 3, categoria: 2, nombre: 'Salud 4'),
];

List<Tienda> tiendaAnuncios = [
  Tienda(idTienda: 0, categoria: 3, nombre: 'Anuncioestaurante 1'),
  Tienda(idTienda: 1, categoria: 3, nombre: 'Anuncioestaurante 2'),
  Tienda(idTienda: 2, categoria: 3, nombre: 'Anuncioestaurante 3'),
  Tienda(idTienda: 3, categoria: 3, nombre: 'Anuncioestaurante 4'),
];

List<Tienda> tiendaEstacional = [
  Tienda(idTienda: 0, categoria: 4, nombre: 'Estacional 1'),
  Tienda(idTienda: 1, categoria: 4, nombre: 'Estacional 2'),
  Tienda(idTienda: 2, categoria: 4, nombre: 'Estacional 3'),
  Tienda(idTienda: 3, categoria: 4, nombre: 'Estacional 4'),
];

// Productos Test
List<Producto> productos = [
  Producto(
    idProducto: '1',
    idTienda: 0,
    nombre: 'Producto 1',
    descripcion: 'Descripcion del producto 1',
    imagen: 'Imagen del producto 1',
    precio: 10.0,
  ),
  Producto(
    idProducto: '2',
    idTienda: 0,
    nombre: 'Producto 2',
    descripcion: 'Descripcion del producto 2',
    imagen: 'Imagen del producto 2',
    precio: 20.0,
  ),
  Producto(
    idProducto: '3',
    idTienda: 1,
    nombre: 'Producto 3',
    descripcion: 'Descripcion del producto 3',
    imagen: 'Imagen del producto 3',
    precio: 30.0,
  ),
  Producto(
    idProducto: '4',
    idTienda: 1,
    nombre: 'Producto 4',
    descripcion: 'Descripcion del producto 4',
    imagen: 'Imagen del producto 4',
    precio: 40.0,
  ),
  Producto(
    idProducto: '5',
    idTienda: 3,
    nombre: 'Producto 5',
    descripcion: 'Descripcion del producto 5',
    imagen: 'Imagen del producto 5',
    precio: 50.0,
  ),
  Producto(
    idProducto: '6',
    idTienda: 3,
    nombre: 'Producto 6',
    descripcion: 'Descripcion del producto 6',
    imagen: 'Imagen del producto 6',
    precio: 60.0,
  ),
];
