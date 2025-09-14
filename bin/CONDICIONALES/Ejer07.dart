/*
EJERCICIO 7: DESCUENTO EN UNA TIENDA
Enunciado: Programa que calcule el precio final de un producto según el monto:
• Si el monto es mayor a 500 → 20% de descuento.
• Si es mayor a 200 → 10% de descuento.  
• Si es menor o igual a 200 → sin descuento.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 7: DESCUENTO EN UNA TIENDA ===');
  print('Ingresa el monto de la compra: ');
  
  double monto = double.parse(stdin.readLineSync()!);
  
  double descuento = 0;
  double precioFinal;
  
  if (monto > 500) {
    descuento = 0.20; // 20% de descuento
    print('Aplicando descuento del 20%');
  } else if (monto > 200) {
    descuento = 0.10; // 10% de descuento
    print('Aplicando descuento del 10%');
  } else {
    print('Sin descuento aplicado');
  }
  
  precioFinal = monto - (monto * descuento);
  
  print('Monto original: \$${monto.toStringAsFixed(2)}');
  if (descuento > 0) {
    print('Descuento: \$${(monto * descuento).toStringAsFixed(2)}');
  }
  print('Precio final: \$${precioFinal.toStringAsFixed(2)}');
}