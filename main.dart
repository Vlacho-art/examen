import 'dart:io';
import 'agregar.dart';
import 'listar.dart';
import 'actualizar.dart';
import 'eliminar.dart';

void main() {
  bool continuar = true;

  while (continuar) {
    mostrarMenu();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarProducto();
        break;
      case '2':
        listarProductos();
        break;
      case '3':
        actualizarProducto();
        break;
      case '4':
        eliminarProducto();
        break;
      case '5':
        print('\nSaliendo del programa... ¡Hasta pronto!');
        continuar = false;
        break;
      default:
        print('\n  Opción inválida. Por favor seleccione una opción del 1 al 5.');
    }
  }
}

void mostrarMenu() {
  print('\n===== GESTIÓN DE PRODUCTOS =====');
  print('1. Agregar producto');
  print('2. Listar productos');
  print('3. Actualizar producto');
  print('4. Eliminar producto');
  print('5. Salir');
  stdout.write('Seleccione una opción: ');
}