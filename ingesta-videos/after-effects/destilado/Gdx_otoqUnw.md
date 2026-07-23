# How to use 3D Models with Element 3D; After Effects Tutorial
**Fuente:** Specter | https://youtu.be/Gdx_otoqUnw

## Qué enseña
Cómo importar modelos 3D gratuitos desde Sketchfab a After Effects usando el plugin Element 3D, aplicar texturas básicas y crear animaciones simples con iluminación opcional.

## Técnicas accionables
- **Descarga de modelos 3D:** Abre Sketchfab, usa los filtros de búsqueda para obtener solo contenido gratuito y descarga en formato `.obj` para compatibilidad con Element 3D.
- **Conversión de formato:** Si no aparece la opción `.obj`, usa Blender para convertir el modelo a ese formato.
- **Configuración en After Effects:**
  1. Crea una capa sólida (Layer > New > Solid).
  2. Aplica el efecto Element 3D a la capa sólida (Effect > Video Copilot > Element 3D).
  3. En el panel de Element 3D, haz clic en "Import" y selecciona el modelo `.obj` descargado.
- **Aplicación de textura:** En el panel de Element 3D, localiza la textura "Base Color" del modelo y asígnala al canal "Diffuse" del material. Las demás texturas (normal, roughness, etc.) pueden omitirse.
- **Animación:** Usa los controles de transformación de Element 3D (posición, rotación, escala) para animar el modelo. Aplica keyframes manualmente en la línea de tiempo.
- **Iluminación opcional:** Agrega luces en After Effects (Layer > New > Light) para mejorar el aspecto visual del modelo 3D.

## Reglas para el erudito
- Usa formato `.obj` para todos los modelos 3D que importes a Element 3D; otros formatos no son compatibles directamente.
- Asigna siempre la textura "Base Color" al canal "Diffuse" del material; las texturas restantes (normal, roughness, metallic) son opcionales y pueden omitirse sin afectar la visualización básica.
- Crea una capa sólida antes de aplicar Element 3D; el efecto no funciona sobre capas de imagen o video directamente.
- Si no ves la opción de descarga `.obj` en Sketchfab, convierte el modelo en Blender antes de importarlo a After Effects.

## Errores comunes que evita o menciona
- Descargar modelos en formatos que no sean `.obj` (como `.fbx` o `.glb`) sin convertirlos previamente, lo que impide su uso en Element 3D.
- Olvidar aplicar la textura "Base Color" al canal "Diffuse", dejando el modelo sin color visible.
- Intentar aplicar Element 3D directamente sobre una capa de video o imagen sin crear primero una capa sólida.