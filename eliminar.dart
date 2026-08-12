import 'dart:io';
import 'agregar.dart';

void eliminarProducto() {
  if (productos.isEmpty) {
    print('No hay productos.');
    return;
  }

  for (int i = 0; i < productos.length; i++) {
    print('${i + 1}. ${productos[i]['nombre']}');
  }

  print('Ingrese el número del producto a eliminar: ');
  int? numero = int.tryParse(stdin.readLineSync() ?? '');

  if (numero == null || numero < 1 || numero > productos.length) {
    print('Número inválido.');
    return;
  }

  productos.removeAt(numero - 1);

  print('Producto eliminado correctamente.');
}