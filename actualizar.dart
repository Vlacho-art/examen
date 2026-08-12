import 'dart:io';
import 'agregar.dart';

void actualizarProducto() {
  if (productos.isEmpty) {
    print('No hay productos.');
    return;
  }

  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. ${productos[i]['nombre']} - ${productos[i]['precio']} - Cantidad: ${productos[i]['cantidad']}',
    );
  }

  print('Ingrese el número del producto a actualizar: ');
  int? numero = int.tryParse(stdin.readLineSync() ?? '');

  if (numero == null || numero < 1 || numero > productos.length) {
    print('Número inválido.');
    return;
  }

  int indice = numero - 1;

  print('Deje vacío si no desea cambiar el dato.');

  print('Nombre: ');
  String nombre = stdin.readLineSync() ?? '';

  if (nombre.isNotEmpty) {
    productos[indice]['nombre'] = nombre;
  }

  print('Precio: ');
  String precio = stdin.readLineSync() ?? '';

  if (precio.isNotEmpty) {
    double? nuevoPrecio = double.tryParse(precio);

    if (nuevoPrecio != null) {
      productos[indice]['precio'] = nuevoPrecio;
    }
  }

  print('Cantidad: ');
  String cantidad = stdin.readLineSync() ?? '';

  if (cantidad.isNotEmpty) {
    int? nuevaCantidad = int.tryParse(cantidad);

    if (nuevaCantidad != null) {
      productos[indice]['cantidad'] = nuevaCantidad;
    }
  }

  print('Producto actualizado correctamente.');
}