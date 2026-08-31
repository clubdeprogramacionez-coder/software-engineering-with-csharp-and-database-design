# Multi-stage build para optimizar tamaño de imagen

# ==========================================
# ETAPA 1: Compilación (Build Stage)
# ==========================================
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

WORKDIR /workspace

# Copiar archivos de proyecto y solución
COPY SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj ./
COPY SoftwareEngineeringWithCSharpAndDatabaseDesign.sln ./

# Restaurar dependencias de NuGet
RUN dotnet restore SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj

# Copiar código fuente completo
COPY . ./

# Compilar solución en Release
RUN dotnet build SoftwareEngineeringWithCSharpAndDatabaseDesign.sln \
    --configuration Release \
    --no-restore \
    --verbosity minimal \
    /p:WarningLevel=4

# Publicar la aplicación
RUN dotnet publish SoftwareEngineeringWithCSharpAndDatabaseDesign.csproj \
    --configuration Release \
    --no-build \
    --output /app/publish

# ==========================================
# ETAPA 2: Runtime (Producción)
# ==========================================
FROM mcr.microsoft.com/dotnet/runtime:9.0 AS runtime

WORKDIR /app

# Copiar artefactos compilados desde la etapa de build
COPY --from=build /app/publish .

# Crear usuario no-root por seguridad
RUN useradd -m -u 1001 appuser && chown -R appuser:appuser /app
USER appuser

# Metadata del contenedor
LABEL description="Software Engineering with C# and Database Design" \
      version="1.0.0" \
      maintainer="Club de Programación" \
      org.opencontainers.image.source="https://github.com/ClubDeProgramacion/software-engineering-csharp"

# Health check (cuando la app esté lista)
# HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
#     CMD dotnet --version || exit 1

# Punto de entrada
ENTRYPOINT ["dotnet", "SoftwareEngineeringWithCSharpAndDatabaseDesign.dll"]

# Comando por defecto (puede sobrescribirse)
CMD []