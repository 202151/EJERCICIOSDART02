/*
EJERCICIO 1: Tabla de multiplicar personalizada
Enunciado: Pide al usuario un número y muestra su tabla de multiplicar del 1 al 12.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 1: TABLA DE MULTIPLICAR PERSONALIZADA ===');
  print('Enunciado: Pide al usuario un número y muestra su tabla de multiplicar del 1 al 12.\n');
  
  print('Ingrese un número para mostrar su tabla de multiplicar del 1 al 12:');
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    try {
      int numero = int.parse(input);
      
      print('\nTabla de multiplicar del $numero:');
      print('═' * 30);
      
      for (int i = 1; i <= 12; i++) {
        int resultado = numero * i;
        print('$numero × $i = $resultado');
      }
      
    } catch (e) {
      print('Error: Por favor ingrese un número válido.');
    }
  } else {
    print('Error: No ingresó ningún número.');
  }
}