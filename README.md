# 🎯 Ejercicios Dart - Guía de Ejecución

## 📋 Ejercicios Disponibles

| # | Ejercicio | Descripción |
|---|-----------|-------------|
| 1️⃣ | **Tabla de Multiplicar** | Genera tabla del 1 al 12 para cualquier número |
| 2️⃣ | **Suma 1 al N** | Calcula suma acumulativa con verificación |
| 3️⃣ | **Pares e Impares** | Separa números en dos categorías |
| 4️⃣ | **Vigilante** | Simula ronda de seguridad (8 puertas) |
| 5️⃣ | **Supermercado** | Sistema de carrito de compras |
| 6️⃣ | **Biblioteca** | Registro de préstamos de libros |

## 🚀 Ejecución Rápida

### Paso 1: Instalar Dart
```bash
# Windows (Chocolatey)
choco install dart-sdk

# macOS (Homebrew)  
brew tap dart-lang/dart && brew install dart

# Linux (apt)
sudo apt install dart

# O descargar desde: https://dart.dev/get-dart
```

### Paso 2: Verificar instalación
```bash
dart --version
```

### Paso 3: Ejecutar ejercicios

#### En Windows (PowerShell)
```powershell
# Navegar al directorio bin donde están los archivos
cd bin

# Ejecutar cualquier ejercicio directamente
.\dart.exe ejercicio01.dart
.\dart.exe ejercicio02.dart
.\dart.exe ejercicio03.dart
.\dart.exe ejercicio04.dart
.\dart.exe ejercicio05.dart
.\dart.exe ejercicio06.dart
```

#### En otros sistemas (Linux/macOS)
```bash
# Ejecutar cualquier ejercicio directamente
dart ejercicio01.dart
dart ejercicio02.dart
dart ejercicio03.dart
dart ejercicio04.dart
dart ejercicio05.dart
dart ejercicio06.dart
```

## 💡 Ejemplos de Salida

<details>
<summary>🧮 Ejercicio 1 - Tabla de Multiplicar</summary>

```
Entrada: 7
Salida:
7 × 1 = 7
7 × 2 = 14
...
7 × 12 = 84
```
</details>

<details>
<summary>🛒 Ejercicio 5 - Supermercado</summary>

```
Producto #1: Pan → $2.50
Producto #2: Leche → $3.75
Producto #3: 0 (terminar)

TOTAL GASTADO: $6.25
```
</details>

## 🐛 Solución Rápida de Problemas

**❌ "dart: command not found"**
```bash
# Verificar PATH o reinstalar Dart
```

**❌ Error de permisos (Linux/macOS)**
```bash
chmod +x ejercicio*.dart
```

**❌ Entrada inválida**
- Los programas validan automáticamente y muestran mensajes de ayuda

## 📁 Archivos del Proyecto
```
ejercicios-dart/
├── ejercicio1.dart    # Tabla multiplicar
├── ejercicio2.dart    # Suma 1 al N  
├── ejercicio3.dart    # Pares/impares
├── ejercicio4.dart    # Vigilante
├── ejercicio5.dart    # Supermercado
├── ejercicio6.dart    # Biblioteca
└── README.md          # Esta guía
```

---

En Windows (PowerShell), ejecuta:
```powershell
cd bin
.\dart.exe ejercicio01.dart
```

En otros sistemas, ejecuta:
```bash
dart ejercicio01.dart
```