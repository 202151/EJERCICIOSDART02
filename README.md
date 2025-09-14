# 🎯 Ejercicios Dart

### Carpeta CONDICIONALES

| # | Ejercicio | Descripción |
|---|-----------|-------------|
| 1️⃣ | **Número Par o Impar** | Determina si un número es par o impar |
| 2️⃣ | **Clasificación de Notas** | Clasifica notas en Excelente, Aprobado o Desaprobado |
| 3️⃣ | **Ejer03** | Ejercicio de condicionales |
| 4️⃣ | **Ejer04** | Ejercicio de condicionales |
| 5️⃣ | **Ejer05** | Ejercicio de condicionales |
| 6️⃣ | **Ejer06** | Ejercicio de condicionales |
| 7️⃣ | **Ejer07** | Ejercicio de condicionales |
| 8️⃣ | **Ejer08** | Ejercicio de condicionales |

### Carpeta ESTRUCTURA_REPETITIVA

| # | Ejercicio | Descripción |
|---|-----------|-------------|
| 1️⃣ | **Tabla de Multiplicar** | Genera tabla del 1 al 12 para cualquier número |
| 2️⃣ | **Suma 1 al N** | Calcula suma acumulativa con verificación |
| 3️⃣ | **Ejercicio03** | Ejercicio de estructuras repetitivas |
| 4️⃣ | **Ejercicio04** | Ejercicio de estructuras repetitivas |
| 5️⃣ | **Ejercicio05** | Ejercicio de estructuras repetitivas |
| 6️⃣ | **Ejercicio06** | Ejercicio de estructuras repetitivas |

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

# Ejecutar ejercicios de CONDICIONALES
.\dart.exe CONDICIONALES\Ejer01.dart
.\dart.exe CONDICIONALES\Ejer02.dart
.\dart.exe CONDICIONALES\Ejer03.dart
# ... y así sucesivamente

# Ejecutar ejercicios de ESTRUCTURA_REPETITIVA
.\dart.exe ESTRUCTURA_REPETITIVA\ejercicio01.dart
.\dart.exe ESTRUCTURA_REPETITIVA\ejercicio02.dart
.\dart.exe ESTRUCTURA_REPETITIVA\ejercicio03.dart
# ... y así sucesivamente
```

#### En otros sistemas (Linux/macOS)
```bash
# Ejecutar ejercicios de CONDICIONALES
dart CONDICIONALES/Ejer01.dart
dart CONDICIONALES/Ejer02.dart
dart CONDICIONALES/Ejer03.dart
# ... y así sucesivamente

# Ejecutar ejercicios de ESTRUCTURA_REPETITIVA
dart ESTRUCTURA_REPETITIVA/ejercicio01.dart
dart ESTRUCTURA_REPETITIVA/ejercicio02.dart
dart ESTRUCTURA_REPETITIVA/ejercicio03.dart
# ... y así sucesivamente
```

## 💡 Ejemplos de Salida

<details>
<summary>🧮 Ejercicio 1 - Tabla de Multiplicar (ESTRUCTURA_REPETITIVA)</summary>

```
=== EJERCICIO 1: TABLA DE MULTIPLICAR PERSONALIZADA ===
Ingrese un número para mostrar su tabla de multiplicar del 1 al 12:
7

Tabla de multiplicar del 7:
═════════════════════════════
7 × 1 = 7
7 × 2 = 14
...
7 × 12 = 84
```
</details>

<details>
<summary>🔢 Ejercicio 1 - Número Par o Impar (CONDICIONALES)</summary>

```
=== EJERCICIO 1: NÚMERO PAR O IMPAR ===
Ingresa un número entero:
8
El número 8 es PAR
```
</details>

## 🐛 Solución Rápida de Problemas

**❌ "dart: command not found"**
```bash
# Verificar PATH o reinstalar Dart
```

**❌ Error de permisos (Linux/macOS)**
```bash
chmod +x CONDICIONALES/*.dart ESTRUCTURA_REPETITIVA/*.dart
```

**❌ Entrada inválida**
- Los programas validan automáticamente y muestran mensajes de ayuda

## 📁 Estructura del Proyecto
```
dart-sdk/
├── bin/
│   ├── CONDICIONALES/
│   │   ├── Ejer01.dart    # Número par o impar
│   │   ├── Ejer02.dart    # Clasificación de notas
│   │   ├── Ejer03.dart    # ...
│   │   └── ...
│   ├── ESTRUCTURA_REPETITIVA/
│   │   ├── ejercicio01.dart    # Tabla de multiplicar
│   │   ├── ejercicio02.dart    # Suma 1 al N
│   │   ├── ejercicio03.dart    # ...
│   │   └── ...
│   └── dart.exe           # Ejecutable de Dart
└── README.md              # Esta guía
```

---

En Windows (PowerShell), ejecuta:
```powershell
cd bin
.\dart.exe CONDICIONALES\Ejer01.dart
# o
.\dart.exe ESTRUCTURA_REPETITIVA\ejercicio01.dart
```

En otros sistemas, ejecuta:
```bash
dart CONDICIONALES/Ejer01.dart
# o
dart ESTRUCTURA_REPETITIVA/ejercicio01.dart
```