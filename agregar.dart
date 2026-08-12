import 'dart:io';

List<Map<String, dynamic>> productos = [];

void agregarProducto() {
  String nombre = '';
  while (nombre.trim().isEmpty) {
    stdout.write('Nombre: ');
    nombre = stdin.readLineSync() ?? '';
    if (nombre.trim().isEmpty) {
      print('El nombre no puede estar vacío.');
    }
  }

  double? precio;
  while (precio == null) {
    stdout.write('Precio: ');
    String entrada = stdin.readLineSync() ?? '';
    precio = double.tryParse(entrada);
    if (precio == null || precio <= 0) {
      print('Ingresa un precio válido (número positivo).');
      precio = null;
    }
  }

  int? cantidad;
  while (cantidad == null) {
    stdout.write('Cantidad disponible: ');
    String entrada = stdin.readLineSync() ?? '';
    cantidad = int.tryParse(entrada);
    if (cantidad == null || cantidad < 0) {
      print('Ingresa una cantidad válida (número entero, mínimo 0).');
      cantidad = null;
    }
  }

  productos.add({
    'nombre': nombre.trim(),
    'precio': precio,
    'cantidad': cantidad,
  });
  print('Producto agregado.');
}