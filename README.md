# Software Engineering with C# and Database Design

**Proyecto de ingeniería de software** para desarrollar una solución integral en C# con diseño de base de datos, siguiendo principios de **arquitectura limpia** y **buenas prácticas** de desarrollo.

---

## 📋 Requisitos Previos

- **[.NET SDK 9.0+](https://dotnet.microsoft.com/download)** - Framework de desarrollo
- **Visual Studio 2022** o **Visual Studio Code** con extensiones C#
- **Docker** (opcional) - Para contenedorización
- **SQL Server 2022+** o **PostgreSQL 15+** - Base de datos (futuro)
- **Git** - Control de versiones

## 🏗️ Arquitectura y Estructura del Proyecto

```
software-engineering-with-csharp-and-database-design/
├── 📄 SoftwareEngineeringWithCSharpAndDatabaseDesign.sln    # Solución principal
├── 📄 SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj # Configuración del proyecto
├── 📄 README.md                                             # Este archivo
├── 📄 Dockerfile                                            # Imagen Docker
├── 📄 .gitignore                                            # Archivos ignorados por Git
│
├── 📁 src/                      # Código fuente de la aplicación
│   ├── 📁 Domain/              # Lógica de dominio y entidades
│   ├── 📁 Infrastructure/      # Acceso a datos y servicios externos
│   ├── 📁 Mvc/                 # Presentación (Controllers, Views)
│   └── 📁 APIrest/             # Endpoints de API REST
│
├── 📁 tests/                    # Pruebas automatizadas
│   ├── 📁 UnitTests/           # Pruebas unitarias
│   └── 📁 IntegrationTests/    # Pruebas de integración
│
├── 📁 db/                       # Base de datos
│   └── 📁 Migrations/          # Scripts de migraciones
│
├── 📁 docs/                     # Documentación técnica
│   └── 📁 adr/                 # Registros de Decisiones Arquitectónicas
│
└── 📁 bin/ & obj/              # Artefactos de compilación (generados)
```

## 🔨 Compilación

### Con .NET CLI (Recomendado)

```powershell
# Compilación Debug (con símbolos de depuración)
dotnet build SoftwareEngineeringWithCSharpAndDatabaseDesign.sln

# Compilación Release (optimizado, sin símbolos)
dotnet build SoftwareEngineeringWithCSharpAndDatabaseDesign.sln --configuration Release

# Limpiar artefactos anteriores
dotnet clean SoftwareEngineeringWithCSharpAndDatabaseDesign.sln

# Restaurar dependencias
dotnet restore SoftwareEngineeringWithCSharpAndDatabaseDesign.sln
```

### Con Visual Studio

1. Abrir `SoftwareEngineeringWithCSharpAndDatabaseDesign.sln`
2. Compilar: `Ctrl + B` o **Build > Build Solution**
3. Limpiar: `Ctrl + Alt + Delete` o **Build > Clean Solution**

### Con Docker

```bash
# Compilar imagen Docker
docker build -t software-engineering-cs:latest .

# Ejecutar contenedor
docker run --rm software-engineering-cs:latest
```

## ▶️ Ejecución

```powershell
# Ejecutar la aplicación
dotnet run --project SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj
```

## Docker

### Compilar imagen

```powershell
docker build -t software-engineering-csharp:latest .
```

### Ejecutar contenedor

```powershell
docker run --rm software-engineering-csharp:latest
```

## Configuración

- Archivo de proyecto: `SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj`
- Framework objetivo: .NET 9.0
- Lenguaje: C# 13
- Características habilitadas:
  - Implicit Usings (simplifica namespaces)
  - Nullable Reference Types (análisis de nulabilidad)

## Desarrollo

### Agregar nuevas dependencias NuGet

```powershell
dotnet add package <nombre-paquete>
```

### Restaurar dependencias

```powershell
dotnet restore
```

### Limpiar compilación anterior

```powershell
dotnet clean
```

## Estándares de Código

- Seguir estándares de nomenclatura de .NET Framework Design Guidelines
- Utilizar patrones de arquitectura limpia (Clean Architecture)
- Mantener separación de responsabilidades (SOLID)
- Escribir pruebas para funcionalidad crítica

## Contribución

1. Crear una rama para la nueva funcionalidad
2. Commits descriptivos en cada cambio
3. Asegurar compilación sin errores
4. Incluir pruebas para nuevas características

## Licencia

Proyecto educativo para el curso de ingeniería de software.

## Estado

**Fase**: Configuración inicial y estructura base
- ✅ Estructura de proyecto
- ✅ Configuración de compilación
- ⏳ Desarrollo de funcionalidades
- ⏳ Implementación de base de datos
