# Planeta Tierra 3D - Tutorial / Davinci Resolve 2022
**Fuente:** mundoaudiovisual | https://youtu.be/3K5Lq7GfX_I

## Qué enseña (2-3 líneas)
Creación de un planeta Tierra 3D realista con atmósfera, galaxia y estrellas usando exclusivamente DaVinci Resolve (Fusion). Cubre la importación de texturas, configuración de esferas 3D, iluminación direccional, mapeado de relieve (bump), luces de ciudad nocturnas, nubes, neblina azul, fondo estelar y organización de nodos.

## Lecciones accionables
- **Descargar texturas:** Usar el enlace en la descripción del video → ingresar email → aceptar política de privacidad → descargar ZIP desde servidor personal → extraer a carpeta "earth textures"
- **Crear composición base:** En módulo Edit → Effects Library → añadir "Blend Composition" (duración 5s por defecto)
- **Importar texturas al Media Pool:** Ctrl + clic para seleccionar múltiples archivos → arrastrar a nodos
- **Renombrar nodos:** Seleccionar nodo → F2 → nombre descriptivo (ej: "blue haze", "clouds", "earth", "highlights", "night lights", "normal", "stars")
- **Alinear nodos:** Click derecho → "Line" para organizar verticalmente
- **Crear esfera 3D:** Añadir nodo "Shape 3D" → en Inspector → Shape → cambiar de "Flat Surface" a "Sphere" → Radius = 10
- **Subdivisión de esfera:** Base Subdivision = 20 → click derecho en valor → "Add Expression" → vincular con "Vice Subdivision" para que ambos se muevan igual
- **Texturizar tierra:** Conectar nodo "Earth texture" → nodo "Merge" (Shift+Space → "Merge") → conectar a "Shape 3D"
- **Añadir bump map:** Conectar nodo "Normal" (bump map) → nodo "Bump Map" → conectar a "Merge"
- **Render 3D:** Añadir nodo "Merge 3D" → conectar Shape 3D → conectar nodo "Render 3D"
- **Configurar cámara:** Añadir nodo "Camera 3D" → conectar a Merge 3D → posicionar vista en monitor → click derecho en cámara → "Copy and Paste 3D Camera"
- **Iluminación direccional:** Añadir nodo "Directional Light" → conectar a Merge 3D → en Render 3D → habilitar "Lighting" → en Light → Transform → Position Z = -30 → Pivot Z = -30 → rotar en X para iluminar tierra
- **Ajustar brillo (Specular):** En nodo "Merge" → pestaña "Material" → "Specular Color" → aumentar "Spread" → ajustar "Intensity" (~0.5)
- **Luces de ciudad nocturnas:**
  1. Copiar esfera tierra → renombrar "without textures" → conectar a nuevo Merge 3D y Render 3D
  2. Añadir nodo "Spherical Camera" → conectar a Merge 3D
  3. Configurar resolución: en Image tab → click derecho en "Width" → "Expression" → escribir `Width/1920*1080` → fijar Width = 3000 (mitad de 6000)
  4. Añadir nodo "Transform" → Flip horizontal (Flop)
  5. Copiar esfera otra vez → renombrar "lights" → conectar textura "city lights" → nodo "Transform" → nodo "Luma Key" → reducir Luminance
  6. En Spherical Camera → Rotation = 90
  7. Conectar Luma Key como máscara en Merge de esfera lights → en Merge → Mask → "Invert Mask" → Channel = "Luminance"
  8. Añadir nodo "Color Corrector" después de Luma Key → ajustar Gain
- **Organizar con grupos:** Seleccionar nodos → Shift+Space → "Underline" → renombrar grupo (ej: "ground", "lights")
- **Nubes:** Copiar Merge de tierra → renombrar "sphere clouds" → conectar textura "clouds" → en Material → Specular Intensity ~0 → en Controls → aumentar Radius (+0.03 a 0.06)
- **Neblina azul:** Añadir nodo "Reflector" → dentro añadir nodo "Merge" → click derecho en Reflector → "Join" → "Material Color" → color azul claro → en Material → Specular Intensity baja → en Reflector → Intensity ~1
- **Estrellas:**
  1. Nueva esfera con Radius = 300 → conectar textura "stars" → en Light → desmarcar "Affected by Light"
  2. Añadir nodo "Background" → en Image → expresión `Width/1920*1080` → Width = 8200 → conectar a esfera
  3. En MediaOut → "Mirror" para repetir textura
  4. Crear Merge 3D separado para estrellas → cámara instantánea (Ctrl+Shift+click en Camera → "Instant Camera") → combinar renders con Merge
- **Efecto final:** Añadir nodo "Blur" → conectar como máscara en Render 3D → "Invert Mask" → ajustar Gain y Blend → añadir nodo "Noise" → reducir Power

## Reglas para agentes
- Usa "Blend Composition" como base, no "Fusion Composition"
- Usa "Merge" (Shift+Space → "Merge") para conectar texturas a Shape 3D, no "Merge 3D" directamente
- Usa "Add Expression" en Base Subdivision para vincular con Vice Subdivision
- Usa "Copy and Paste 3D Camera" para fijar posición exacta de cámara
- Usa "Spherical Camera" para capturar mapeado esférico desde dentro de la esfera
- Usa "Luminance" como canal de máscara, no "Alpha", cuando trabajes con mapas en blanco y negro
- Usa "Invert Mask" en Merge para luces de ciudad (visible solo en lado oscuro)
- Usa "Mirror" en MediaOut para repetir textura de estrellas
- Usa "Instant Camera" (Ctrl+Shift+click) para estrellas de fondo que no se muevan con la cámara
- Nunca uses resolución automática en Spherical Camera; siempre fija Width con expresión proporcional
- Nunca conectes directamente texturas a Shape 3D sin un Merge intermedio

## Errores comunes que evita o menciona
- **Reflejos feos en tierra:** Se corrigen con Specular Color en Merge → aumentar Spread y ajustar Intensity (~0.5)
- **Textura de estrellas pequeña y de baja calidad:** Se soluciona aumentando resolución del Background a 8200x4600 y usando Mirror
- **Luces de ciudad visibles en lado iluminado:** Se corrige usando máscara invertida con canal Luminance
- **Cámara dentro de la esfera:** Se corrige con Flip horizontal en Transform después de Spherical Camera
- **Estrellas se mueven con la cámara:** Se soluciona usando Merge 3D separado con Instant Camera para el fondo estelar
- **Desorganización de nodos:** Se recomienda usar grupos (Underline) y renombrar cada nodo con F2