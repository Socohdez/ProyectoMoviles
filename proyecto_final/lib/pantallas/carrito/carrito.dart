import 'package:proyecto_final/pantallas/categorias/Producto.dart';

class Carrito {
  List<Producto> productos = [];

  // Agrega un producto al carrito
  void agregarAlCarrito(Producto producto) {
    productos.add(producto);
  }

  // Elimina un producto del carrito
  void eliminarDelCarrito(Producto producto) {
    productos.remove(producto);
  }

  // Obtiene la cantidad total de productos en el carrito
  int obtenerCantidadTotal() {
    return productos.length;
  }

  // Obtiene el total del valor de los productos en el carrito
  double obtenerTotal() {
    return productos.fold(0.0, (total, producto) => total + producto.precio);
  }
}

Carrito cart = Carrito();