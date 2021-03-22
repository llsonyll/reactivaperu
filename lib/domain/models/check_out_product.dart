import 'package:reactiva/domain/models/producto.dart';

class CheckOutProduct {
  const CheckOutProduct({this.producto, this.cantidad});

  final Producto producto;
  final int cantidad;

  double calcularPrecioTotal() {
    final total = producto.precio * cantidad;
    return total;
  }
}
