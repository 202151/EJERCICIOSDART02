/*
EJERCICIO 3: Números pares e impares
Enunciado: Pide un número entero N y muestra por separado los números pares e impares entre 1 y N.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 3: NÚMEROS PARES E IMPARES ===');
  print('Enunciado: Pide un número entero N y muestra por separado los números pares e impares entre 1 y N.\n');
  
  print('Ingrese un número entero N:');
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    try {
      int n = int.parse(input);
      
      if (n <= 0) {
        print('Error: El número debe ser positivo.');
        return;
      }
      
      List<int> pares = [];
      List<int> impares = [];
      
      // Separamos números pares e impares
      for (int i = 1; i <= n; i++) {
        if (i % 2 == 0) {
          pares.add(i);
        } else {
          impares.add(i);
        }
      }
      
      print('\nRESULTADOS PARA N = $n:');
      print('═' * 40);
      
      print('\nNÚMEROS PARES:');
      if (pares.isNotEmpty) {
        print('${pares.join(', ')}');
        print('Total de números pares: ${pares.length}');
      } else {
        print('No hay números pares en el rango.');
      }
      
      print('\nNÚMEROS IMPARES:');
      if (impares.isNotEmpty) {
        print('${impares.join(', ')}');
        print('Total de números impares: ${impares.length}');
      } else {
        print('No hay números impares en el rango.');
      }
      
    } catch (e) {
      print('Error: Por favor ingrese un número entero válido.');
    }
  } else {
    print('Error: No ingresó ningún número.');
  }
}