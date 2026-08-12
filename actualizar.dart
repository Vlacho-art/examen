import 'dart:io';
import 'agregar.dart';

void actualizarProducto() {
  if (productos.isEmpty) {
    print('No hay productos.');
    return;
  }

  for (int i = 0; i < productos.length; i++) {
    print('${i + 1}. ${productos[i]['nombre']} - ${productos[i]['precio']} - Cantidad: ${productos[i]['cantidad']}');
  }

  print('Ingrese el número del producto a actualizar: ');
  int numero = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (numero < 1 || numero > productos.length) {
    print('Número inválido.');
    return;
  }

  var producto = productos[numero - 1];

  print('Nombre (${producto['nombre']}): ');
  String nombre = stdin.readLineSync() ?? '';
  if (nombre.isNotEmpty) producto['nombre'] = nombre;

  print('Precio (${producto['precio']}): ');
  double? precio = double.tryParse(stdin.readLineSync() ?? '');
  if (precio != null) producto['precio'] = precio;

  print('Cantidad (${producto['cantidad']}): ');
  int? cantidad = int.tryParse(stdin.readLineSync() ?? '');
  if (cantidad != null) producto['cantidad'] = cantidad;

  print('Producto actualizado correctamente.');
}