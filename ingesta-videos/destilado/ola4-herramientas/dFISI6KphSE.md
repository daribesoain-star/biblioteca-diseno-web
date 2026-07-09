# Getting started with Cog and Replicate [replicate]
**Fuente:** ola4-herramientas | https://youtu.be/dFISI6KphSE

## Qué enseña
Este video explica cómo usar Cog (herramienta CLI open source) para empaquetar modelos de machine learning en contenedores Docker y publicarlos en Replicate, una plataforma para crear demos interactivas de modelos. Cubre desde la instalación de Cog hasta el despliegue y prueba de un modelo en la web.

## Lecciones accionables
- Instalar Cog con dos comandos: descargar el binario y hacerlo ejecutable (`chmod +x cog`).
- Ejecutar `cog init` dentro del directorio del proyecto para generar automáticamente los archivos `cog.yaml` y `predict.py`.
- En `cog.yaml` especificar: `image` (URL del paquete en el registro de Replicate), `python_version`, `python_packages` (dependencias), `system_packages` (paquetes del sistema Ubuntu), `run` (comando post-configuración), y `predict` (puntero a la función predictor en Python).
- En `predict.py` crear una clase que extienda `cog.Predictor` con dos métodos obligatorios: `setup()` (carga el modelo en memoria) y `predict()` (toma inputs y ejecuta la predicción). Definir los inputs del modelo (imágenes, números, texto) dentro de esta clase.
- Usar `cog run bash` para construir el entorno Docker y ejecutar un shell interactivo dentro del contenedor.
- Usar `cog predict input=<valor>` para ejecutar una predicción desde la línea de comandos (ejemplo: `cog predict input=zeke` devuelve `hello zeke`).
- Autenticarse con `cog login` (abre navegador, muestra token, se pega en terminal).
- Publicar el modelo con `cog push` (si se definió `image` en `cog.yaml`) o `cog push <model_url>`.
- En Replicate, una vez publicado, probar el modelo desde la página web, agregar predicciones a la galería de ejemplos, y obtener enlaces permanentes para compartir predicciones específicas.

## Reglas para agentes
- Usa `cog init` solo cuando tengas un modelo existente y quieras generar la estructura base de archivos.
- Define siempre `image` en `cog.yaml` si planeas usar `cog push` sin argumentos.
- Ejecuta `cog login` antes de cualquier `cog push` para autenticarte en el registro de Replicate.
- Nunca omitas los métodos `setup()` y `predict()` en `predict.py`; son obligatorios para que Cog funcione.
- Nunca uses `cog push` sin haber probado primero el modelo localmente con `cog predict`.

## Errores comunes que evita o menciona
- No especificar la versión correcta de CUDA compatible con TensorFlow o PyTorch (Cog lo maneja automáticamente, evitando ese dolor de cabeza).
- Olvidar autenticarse con `cog login` antes de hacer push (resulta en error de autenticación).
- No definir correctamente los inputs en `predict.py` (la página web no mostrará los campos de entrada adecuados).
- Intentar usar Cog en Windows (solo soporta macOS y Linux).