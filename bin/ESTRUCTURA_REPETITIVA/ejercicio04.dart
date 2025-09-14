/*
EJERCICIO 4: El vigilante de un edificio
Enunciado: Un vigilante debe revisar las 8 puertas del edificio cada noche. 
El sistema debe mostrar un mensaje como:
Puerta 1 revisada
Puerta 2 revisada
...
Puerta 8 revisada
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 4: EL VIGILANTE DE UN EDIFICIO ===');
  print('Enunciado: Un vigilante debe revisar las 8 puertas del edificio cada noche.');
  print('El sistema debe mostrar un mensaje para cada puerta revisada.\n');
  
  print('Iniciando ronda de vigilancia...');
  print('═' * 40);
  
  // Simulamos la revisión de las 8 puertas
  for (int puerta = 1; puerta <= 8; puerta++) {
    // Simulamos un pequeño tiempo de revisión
    sleep(Duration(milliseconds: 500));
    
    print('Puerta $puerta revisada');
  }
  
  print('═' * 40);
  print('✅ Ronda de vigilancia completada. Todas las puertas han sido revisadas.');
  
  // Funcionalidad adicional: permitir al usuario hacer otra ronda
  print('\n¿Desea realizar otra ronda de vigilancia? (s/n):');
  String? respuesta = stdin.readLineSync()?.toLowerCase();
  
  if (respuesta == 's' || respuesta == 'si' || respuesta == 'sí') {
    print('\nIniciando nueva ronda...');
    print('═' * 40);
    
    for (int puerta = 1; puerta <= 8; puerta++) {
      sleep(Duration(milliseconds: 500));
      print('Puerta $puerta revisada');
    }
    
    print('═' * 40);
    print('✅ Segunda ronda completada.');
  } else {
    print('Fin del turno de vigilancia.');
  }
}