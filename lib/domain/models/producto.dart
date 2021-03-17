class Producto {
  const Producto({
    this.idProducto,
    this.idTienda,
    this.nombre,
    this.descripcion,
    this.imagen,
    this.precio,
  });

  final String idProducto;
  final int idTienda;
  final String nombre;
  final String descripcion;
  final String imagen;
  final double precio;
}
