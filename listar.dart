import 'agregar.dart';

void listarProductos() {
  if (productos.isEmpty) {
    print('No hay productos registrados.');
    return;
  }

  for (int i = 0; i < productos.length; i++) {
    print('${i + 1}. ${productos[i]['nombre']} - \$${productos[i]['precio']} - Cantidad: ${productos[i]['cantidad']}');
  }
}