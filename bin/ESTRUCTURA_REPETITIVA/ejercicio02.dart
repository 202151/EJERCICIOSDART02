/*
EJERCICIO 2: Suma de números del 1 al N
Enunciado: Solicita un número entero N y calcula la suma de todos los números desde 1 hasta N.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 2: SUMA DE NÚMEROS DEL 1 AL N ===');
  print('Enunciado: Solicita un número entero N y calcula la suma de todos los números desde 1 hasta N.\n');
  
  print('Ingrese un número entero N:');
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    try {
      int n = int.parse(input);
      
      if (n <= 0) {
        print('Error: El número debe ser positivo.');
        return;
      }
      
      int suma = 0;
      String operacion = '';
      
      // Calculamos la suma y construimos la operación para mostrar
      for (int i = 1; i <= n; i++) {
        suma += i;
        operacion += i.toString();
        if (i < n) {
          operacion += ' + ';
        }
      }
      
      print('\nCalculando la suma de números del 1 al $n:');
      print('═' * 50);
      print('Operación: $operacion');
      print('Resultado: $suma');
      
      // También mostramos la fórmula matemática
      int formulaResultado = (n * (n + 1)) ~/ 2;
      print('\nVerificación con fórmula n(n+1)/2 = $n($n+1)/2 = $formulaResultado');
      
    } catch (e) {
      print('Error: Por favor ingrese un número entero válido.');
    }
  } else {
    print('Error: No ingresó ningún número.');
  }
}