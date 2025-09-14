/*
EJERCICIO 6: Préstamo en la biblioteca
Enunciado: Un estudiante puede pedir prestados libros de una biblioteca. El sistema debe
permitir registrar los títulos de los libros uno por uno y preguntar al final:
"¿Deseas registrar otro libro? (s/n)".
*/

import 'dart:io';

void main() {
  print('=== EJERCICIO 6: PRÉSTAMO EN LA BIBLIOTECA ===');
  print('Enunciado: Un estudiante puede pedir prestados libros de una biblioteca.');
  print('El sistema permite registrar títulos de libros uno por uno.\n');
  
  List<String> libros = [];
  int numeroLibro = 1;
  
  print('📚 Sistema de Préstamos - Biblioteca');
  print('═' * 40);
  
  while (true) {
    print('\nLibro #$numeroLibro');
    print('Ingrese el título del libro:');
    String? titulo = stdin.readLineSync();
    
    if (titulo == null || titulo.trim().isEmpty) {
      print('❌ Error: El título no puede estar vacío. Intente nuevamente.');
      continue;
    }
    
    // Agregar el libro a la lista
    libros.add(titulo.trim());
    print('✅ "$titulo" agregado a la lista de préstamos.');
    
    // Preguntar si desea registrar otro libro
    while (true) {
      print('\n¿Deseas registrar otro libro? (s/n):');
      String? respuesta = stdin.readLineSync()?.toLowerCase().trim();
      
      if (respuesta == 's' || respuesta == 'si' || respuesta == 'sí' || respuesta == 'y' || respuesta == 'yes') {
        numeroLibro++;
        break; // Salir del bucle interno para registrar otro libro
      } else if (respuesta == 'n' || respuesta == 'no') {
        // Mostrar resumen final
        mostrarResumenPrestamo(libros);
        return; // Terminar el programa
      } else {
        print('❌ Respuesta no válida. Por favor ingrese "s" para sí o "n" para no.');
      }
    }
  }
}

void mostrarResumenPrestamo(List<String> libros) {
  print('\n' + '═' * 50);
  print('📋 RESUMEN DE PRÉSTAMOS');
  print('═' * 50);
  
  if (libros.isEmpty) {
    print('No se registraron libros para préstamo.');
  } else {
    print('Libros registrados para préstamo:\n');
    
    for (int i = 0; i < libros.length; i++) {
      print('${i + 1}. ${libros[i]}');
    }
    
    print('\n' + '─' * 50);
    print('Total de libros: ${libros.length}');
    print('Fecha de préstamo: ${DateTime.now().toString().split(' ')[0]}');
    print('Fecha de devolución: ${DateTime.now().add(Duration(days: 14)).toString().split(' ')[0]} (14 días)');
    print('═' * 50);
    print('✅ Préstamo registrado exitosamente.');
    print('¡Disfruta la lectura! 📖');
  }
}