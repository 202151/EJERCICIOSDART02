/*
EJERCICIO 4: CLASIFICACIÓN DE EDADES
Enunciado: Programa que lea la edad de una persona y muestre:
• "Niño" si es menor de 12 años.
• "Adolescente" si está entre 12 y 17 años.
• "Adulto" si está entre 18 y 59 años.
• "Adulto mayor" si tiene 60 o más.
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 4: CLASIFICACIÓN DE EDADES ===');
  print('Ingresa la edad de la persona: ');
  
  int edad = int.parse(stdin.readLineSync()!);
  
  if (edad < 0) {
    print('Edad inválida');
  } else if (edad < 12) {
    print('Niño');
  } else if (edad >= 12 && edad <= 17) {
    print('Adolescente');
  } else if (edad >= 18 && edad <= 59) {
    print('Adulto');
  } else {
    print('Adulto mayor');
  }
}