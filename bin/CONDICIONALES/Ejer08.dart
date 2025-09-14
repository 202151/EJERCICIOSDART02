/*
EJERCICIO 8: NOTAS Y PROMEDIO + SIMULADOR DE NOTAS PONDERADAS

PARTE 1 - NOTAS Y PROMEDIO:
Crea un programa que lea 3 notas de un estudiante y calcule el promedio.
Luego evalúa:
• "Excelente" si promedio ≥ 18.
• "Bueno" si promedio está entre 14 y 17.
• "Regular" si promedio está entre 11 y 13.
• "Deficiente" si promedio < 11.

PARTE 2 - SIMULADOR DE NOTAS PONDERADAS:
Un curso tiene 3 evaluaciones con los siguientes pesos:
• Prácticas: 30%
• Examen parcial: 30%
• Examen final: 40%

El programa debe:
1. Pedir las tres notas.
2. Calcular la nota final ponderada.
3. Determinar la condición del estudiante:
   • ≥ 18 → "Sobresaliente".
   • 14 - 17 → "Bueno".
   • 11 - 13 → "Regular".
   • < 11 → "Reprobado".
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 8: SISTEMA DE EVALUACIÓN COMPLETO ===');
  print('Selecciona el tipo de evaluación:');
  print('1. Promedio simple (3 notas con igual peso)');
  print('2. Promedio ponderado (con pesos específicos)');
  print('Ingresa tu opción (1 o 2): ');
  
  int opcion = int.parse(stdin.readLineSync()!);
  
  switch (opcion) {
    case 1:
      evaluacionSimple();
      break;
    case 2:
      evaluacionPonderada();
      break;
    default:
      print('Opción inválida');
  }
}

// PARTE 1: Evaluación con promedio simple
void evaluacionSimple() {
  print('\n=== PROMEDIO SIMPLE ===');
  
  print('Ingresa la primera nota: ');
  double nota1 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa la segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!);
  
  print('Ingresa la tercera nota: ');
  double nota3 = double.parse(stdin.readLineSync()!);
  
  double promedio = (nota1 + nota2 + nota3) / 3;
  
  print('\n--- RESULTADOS ---');
  print('Nota 1: $nota1');
  print('Nota 2: $nota2');
  print('Nota 3: $nota3');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
  
  if (promedio >= 18) {
    print('Rendimiento: Excelente');
  } else if (promedio >= 14) {
    print('Rendimiento: Bueno');
  } else if (promedio >= 11) {
    print('Rendimiento: Regular');
  } else {
    print('Rendimiento: Deficiente');
  }
}

// PARTE 2: Evaluación con promedio ponderado
void evaluacionPonderada() {
  print('\n=== PROMEDIO PONDERADO ===');
  print('Sistema de evaluación:');
  print('- Prácticas: 30%');
  print('- Examen parcial: 30%');
  print('- Examen final: 40%\n');
  
  print('Ingresa la nota de prácticas (0-20): ');
  double practicas = double.parse(stdin.readLineSync()!);
  
  print('Ingresa la nota del examen parcial (0-20): ');
  double parcial = double.parse(stdin.readLineSync()!);
  
  print('Ingresa la nota del examen final (0-20): ');
  double examenFinal = double.parse(stdin.readLineSync()!);
  
  // Calcular nota final ponderada
  double notaFinal = (practicas * 0.30) + (parcial * 0.30) + (examenFinal * 0.40);
  
  print('\n--- RESULTADOS PONDERADOS ---');
  print('Nota de prácticas: $practicas (30%) = ${(practicas * 0.30).toStringAsFixed(2)}');
  print('Nota de parcial: $parcial (30%) = ${(parcial * 0.30).toStringAsFixed(2)}');
  print('Nota de final: $examenFinal (40%) = ${(examenFinal * 0.40).toStringAsFixed(2)}');
  print('Nota final ponderada: ${notaFinal.toStringAsFixed(2)}');
  
  // Determinar condición del estudiante
  String condicion;
  if (notaFinal >= 18) {
    condicion = 'Sobresaliente';
  } else if (notaFinal >= 14) {
    condicion = 'Bueno';
  } else if (notaFinal >= 11) {
    condicion = 'Regular';
  } else {
    condicion = 'Reprobado';
  }
  
  print('Condición: $condicion');
}