// Clase para representar un producto
class Producto {
  final String nombre;
  final double precio;
  final String imagenUrl;
  final String descripcion;
  final String marca;
  int cantidadEnCarrito; // Nuevo campo para contar la cantidad en el carrito

  Producto(
      this.nombre, this.precio, this.imagenUrl, this.descripcion, this.marca)
      : cantidadEnCarrito = 0; // Inicializamos la cantidad en el carrito en 0
}
