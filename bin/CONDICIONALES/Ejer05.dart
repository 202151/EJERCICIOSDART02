/*
EJERCICIO 5: CALCULADORA BÁSICA
Enunciado: Escribe un programa que pida dos números y una operación (+, -, *, /).
Usa condicionales para ejecutar la operación correcta.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 5: CALCULADORA BÁSICA ===');
  
  print('Ingresa el primer número: ');
  double num1 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa el segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa la operación (+, -, *, /): ');
  String operacion = stdin.readLineSync()!;
  
  double resultado;
  
  switch (operacion) {
    case '+':
      resultado = num1 + num2;
      print('$num1 + $num2 = $resultado');
      break;
    case '-':
      resultado = num1 - num2;
      print('$num1 - $num2 = $resultado');
      break;
    case '*':
      resultado = num1 * num2;
      print('$num1 * $num2 = $resultado');
      break;
    case '/':
      if (num2 != 0) {
        resultado = num1 / num2;
        print('$num1 / $num2 = $resultado');
      } else {
        print('Error: División por cero');
      }
      break;
    default:
      print('Operación inválida');
  }
}