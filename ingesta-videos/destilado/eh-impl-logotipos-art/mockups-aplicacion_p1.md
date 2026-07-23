# mockups-aplicacion
**Fuente:** impl-logotipos | https://phlearn.com/tutorial/replace-sign-for-mockups-photoshop/

## Qué enseña
Aplica logotipos a mockups de señalética y fachadas con perspectiva realista usando dos métodos: Smart Objects (simple, automático) y Displacement Maps (mayor realismo sobre texturas). El flujo cubre desde plantillas PSD prearmadas hasta el ajuste manual de perspectiva y distorsión para que el logo parezca parte de la foto original.

## Lecciones accionables
- **Smart Objects (método simple):**
  1. Abre el archivo PSD del mockup (fachada, letrero, valla).
  2. Localiza la capa del Smart Object (generalmente etiquetada como "Smart Object", "Your Art Here" o "Place Logo").
  3. Haz doble clic en la miniatura del Smart Object para abrirlo en una ventana separada.
  4. Coloca tu logotipo/arte dentro del Smart Object en vista plana normal.
  5. Guarda y cierra (Ctrl+S / Cmd+S). Automáticamente el logo adopta la perspectiva, iluminación, estilos de capa y sombras del mockup original.

- **Displacement Maps (mayor realismo en superficies texturizadas):**
  1. **Crear el mapa de desplazamiento:**
     - Duplica la capa de fondo de la superficie objetivo (tela, piel, muro texturizado).
     - Desatura la capa duplicada: `Imagen > Ajustes > Desaturar` (o Ctrl+Shift+U / Cmd+Shift+U).
     - Aplica desenfoque gaussiano suave: `Filtro > Desenfocar > Desenfoque gaussiano`, valor entre 2-5 píxeles (ajustar según textura).
     - Guarda como archivo PSD independiente (ej. "displacement_map.psd").
  2. **Insertar el logo:**
     - Coloca el logo sobre la superficie objetivo como capa separada.
     - Ajusta la perspectiva manualmente (`Edición > Transformar > Perspectiva` o `Distorsionar`) para alinear con la forma del objeto.
  3. **Aplicar filtro Desplazar:**
     - Con la capa del logo seleccionada, ve a `Filtro > Distorsionar > Desplazar`.
     - Configura: Escala horizontal: 10-20, Escala vertical: 10-20 (ajustar según intensidad de textura).
     - Marca "Estirar para ajustar" y "Repetir píxeles de borde".
     - Selecciona el archivo PSD del displacement map guardado previamente.
     - El logo se deformará siguiendo los contornos y texturas de la superficie.

- **Workflow por perspectiva (documento aparte):**
  - Trabaja el logo en un documento separado en vista plana normal (sin perspectiva).
  - Ese documento se actualiza en tiempo real en la perspectiva correcta del proyecto principal (Smart Object vinculado).
  - La perspectiva del texto/logo debe coincidir exactamente con la del letrero/fachada en la foto base.

- **Equivalente programático (ecosistema "Diseño Master IA"):**
  - Homografía / corner-pin: detección de esquinas por visión computacional.
  - Color match Reinhard: ajuste cromático automático.
  - QA matemático: validación de precisión geométrica y cromática.

## Reglas para agentes
- Usa Smart Objects cuando el mockup PSD ya tenga la capa prearmada (etiquetada como "Smart Object" o "Your Art Here").
- Usa Displacement Maps cuando el logo deba seguir texturas irregulares (tela, piel, muro rugoso, tatuajes).
- Nunca apliques el filtro Desplazar sin haber creado y guardado primero el displacement map en formato PSD.
- Nunca trabajes la perspectiva del logo directamente sobre el mockup; hazlo siempre en el Smart Object aparte (vista plana) para mantener la edición no destructiva.
- Ajusta la escala del displacement map (horizontal/vertical) entre 10-20 como valor inicial; incrementa si la textura es muy pronunciada, disminuye si es sutil.
- Usa desenfoque gaussiano de 2-5 píxeles en el displacement map; valores mayores suavizan demasiado la deformación.

## Errores comunes que evita o menciona
- **Olvidar guardar el displacement map como PSD:** El filtro Desplazar solo acepta archivos .psd; guardar como JPEG o PNG causa error.
- **No desaturar la capa del displacement map:** El filtro usa información tonal en escala de grises; una capa a color produce deformaciones erráticas.
- **Aplicar perspectiva directamente sobre el logo en el mockup:** Rompe la edición no destructiva y dificulta ajustes posteriores; siempre usar Smart Object.
- **Escalas de desplazamiento demasiado altas (>50):** Distorsionan el logo más allá del reconocimiento; mantener entre 10-20 como rango seguro.
- **No alinear la perspectiva antes de aplicar el displacement map:** El filtro deforma pero no corrige la perspectiva; primero ajusta manualmente con Transformar > Perspectiva/Distorsionar.