/*
EJERCICIO 3: MAYOR DE TRES NÚMEROS
Enunciado: Escribe un programa que reciba tres números y muestre cuál es el mayor de ellos.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 3: MAYOR DE TRES NÚMEROS ===');
  
  print('Ingresa el primer número: ');
  double num1 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa el segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa el tercer número: ');
  double num3 = double.parse(stdin.readLineSync()!);
  
  double mayor;
  
  if (num1 >= num2 && num1 >= num3) {
    mayor = num1;
  } else if (num2 >= num1 && num2 >= num3) {
    mayor = num2;
  } else {
    mayor = num3;
  }
  
  print('El mayor número es: $mayor');
}