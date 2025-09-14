/*
EJERCICIO 2: CLASIFICACIÓN DE NOTAS
Enunciado: Programa que lea la nota de un estudiante (0-20) y muestre:
• "Excelente" si la nota es 18 a 20.
• "Aprobado" si está entre 11 y 17.
• "Desaprobado" si es menor que 11.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 2: CLASIFICACIÓN DE NOTAS ===');
  print('Ingresa la nota del estudiante (0-20): ');
  
  double nota = double.parse(stdin.readLineSync()!);
  
  if (nota >= 18 && nota <= 20) {
    print('Excelente');
  } else if (nota >= 11 && nota < 18) {
    print('Aprobado');
  } else if (nota >= 0 && nota < 11) {
    print('Desaprobado');
  } else {
    print('Nota inválida. Debe estar entre 0 y 20.');
  }
}