# **PHP HOLA MUNDO**

Un proyecto simple que muestra cómo crear y ejecutar un programa "Hola Mundo" en PHP, incluyendo su containerización con Docker.

## Descripción
Este proyecto implementa un script básico en PHP que imprime "Hola Mundo" en la consola. Sirve como ejemplo de configuración básica de un proyecto PHP y su despliegue en contenedor Docker.

## Requisitos
- **Runtime**: PHP 7.4 o superior
- **Docker**: (opcional) para la ejecución containerizada

## Estructura del Proyecto
```
php-hola-mundo/
│
├── holamundo.php    # Script principal de PHP
├── Dockerfile       # Configuración de Docker
└── README.md        # Este archivo
```

## Contenido de los Archivos

### holamundo.php
```php
<?php
// This program prints "Hello World" to the console
echo "Hola Mundo\n";
?>
```

### Dockerfile
```dockerfile
# Use an official PHP runtime as the base image
FROM php:7.4-cli

# Copy the PHP file to the container
COPY holamundo.php /PHPHOLAMUNDO/holamundo.php

# Set the working directory
WORKDIR /PHPHOLAMUNDO

# Command to run the program
CMD ["php", "holamundo.php"]
```

## Instalación y Ejecución

### Clonar el Repositorio
```bash
git clone https://github.com/<tu-usuario>/php-hola-mundo.git
cd php-hola-mundo
```

### Ejecución Local con PHP
Asegúrate de tener PHP instalado en tu sistema y ejecuta:
```bash
php holamundo.php
```

### Ejecución con Docker

**Paso 1: Construir la Imagen**
```bash
docker build -t php-hola-mundo .
```

**Paso 2: Ejecutar el Contenedor**
```bash
docker run php-hola-mundo
```

## Docker Hub
Puedes encontrar la imagen de este proyecto en Docker Hub:
[PHP Hola Mundo en Docker Hub](https://hub.docker.com/repository/docker/john2713/hola-mundo-php/general)

Para descargar y ejecutar la imagen directamente desde Docker Hub:
```bash
docker pull john2713/hola-mundo-php:latest
docker run john2713/hola-mundo-php:latest
```

## Despliegue en Docker Hub

**Paso 1: Etiquetar la Imagen**
```bash
docker tag php-hola-mundo john2713/hola-mundo-php:latest
```

**Paso 2: Publicar en Docker Hub**
```bash
docker push john2713/hola-mundo-php:latest
```

## Guía de Desarrollo

### Prerrequisitos
1. PHP 7.4 o superior instalado
2. Docker (opcional)
3. Git

### Configuración del Entorno de Desarrollo
1. Instala PHP en tu sistema
   - En Ubuntu/Debian: `sudo apt-get install php`
   - En macOS: `brew install php`
   - En Windows: Descarga el instalador desde [php.net](https://www.php.net/downloads)

2. Verifica la instalación:
   ```bash
   php --version
   ```

## Mejores Prácticas
- El código sigue las convenciones de estilo PSR-12
- Se utiliza una versión estable de PHP
- El Dockerfile está optimizado para un despliegue ligero
- Se incluyen comentarios explicativos en el código

## Resolución de Problemas Comunes
1. **Error de Permisos**
   ```bash
   chmod +x holamundo.php
   ```

2. **Error de Docker**
   - Asegúrate de que el servicio Docker esté corriendo
   - Verifica los permisos de Docker

## Licencia
Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## Autor
- Tu Nombre - [Tu GitHub](https://github.com/<tu-usuario>)

---
*Nota: Los comandos de Docker utilizan el usuario 'john2713'. Asegúrate de cambiar esto por tu propio usuario de Docker Hub si vas a crear tu propia versión del proyecto.*
