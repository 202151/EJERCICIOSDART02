/*
EJERCICIO 1: NÚMERO PAR O IMPAR
Enunciado: Programa que determine si un número ingresado es par o impar.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 1: NÚMERO PAR O IMPAR ===');
  print('Ingresa un número entero: ');
  
  int numero = int.parse(stdin.readLineSync()!);
  
  if (numero % 2 == 0) {
    print('El número $numero es PAR');
  } else {
    print('El número $numero es IMPAR');
  }
}