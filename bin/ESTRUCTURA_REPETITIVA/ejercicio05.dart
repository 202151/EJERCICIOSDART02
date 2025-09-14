/*
EJERCICIO 5: Control de compras en un supermercado
Enunciado: Un cliente va al supermercado y coloca productos en su carrito. El sistema debe
preguntar el precio de cada producto hasta que el cliente termine. Al final, el programa
muestra el total gastado.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 5: CONTROL DE COMPRAS EN UN SUPERMERCADO ===');
  print('Enunciado: Un cliente va al supermercado y coloca productos en su carrito.');
  print('El sistema pregunta el precio de cada producto hasta que termine.\n');
  
  List<double> precios = [];
  List<String> productos = [];
  double total = 0.0;
  int numeroProducto = 1;
  
  print('🛒 Bienvenido al Sistema de Compras');
  print('Ingrese el precio de cada producto (0 para terminar):\n');
  
  while (true) {
    print('Producto #$numeroProducto:');
    print('Nombre del producto (opcional - presione Enter para omitir):');
    String? nombreProducto = stdin.readLineSync();
    
    print('Precio del producto #$numeroProducto (0 para terminar):');
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print('Por favor ingrese un precio válido.');
      continue;
    }
    
    try {
      double precio = double.parse(input);
      
      if (precio == 0) {
        break; // Terminar las compras
      }
      
      if (precio < 0) {
        print('Error: El precio no puede ser negativo. Intente nuevamente.');
        continue;
      }
      
      precios.add(precio);
      total += precio;
      
      // Guardar nombre del producto
      if (nombreProducto != null && nombreProducto.isNotEmpty) {
        productos.add(nombreProducto);
      } else {
        productos.add('Producto #$numeroProducto');
      }
      
      print('✅ ${productos.last} agregado: \$${precio.toStringAsFixed(2)}');
      print('Subtotal actual: \$${total.toStringAsFixed(2)}\n');
      
      numeroProducto++;
      
    } catch (e) {
      print('Error: Por favor ingrese un número válido.');
    }
  }
  
  // Mostrar resumen de compra
  print('\n' + '═' * 50);
  print('🧾 RESUMEN DE COMPRA');
  print('═' * 50);
  
  if (precios.isEmpty) {
    print('No se agregaron productos al carrito.');
  } else {
    for (int i = 0; i < productos.length; i++) {
      print('${i + 1}. ${productos[i]}: \$${precios[i].toStringAsFixed(2)}');
    }
    
    print('─' * 50);
    print('Total de productos: ${precios.length}');
    print('TOTAL GASTADO: \$${total.toStringAsFixed(2)}');
    print('═' * 50);
    print('¡Gracias por su compra! 🛍️');
  }
}