# 🔴 DJI AVATA  
**Fuente:** mundoaudiovisual | https://youtu.be/aTVzwQ8TP-Q

## Qué enseña (2-3 líneas)
Cómo configurar el DJI Avata para grabar con estabilización desactivada y luego estabilizar el metraje en postproducción usando el software gratuito Gyroflow, logrando movimientos más cinemáticos. También cubre el uso de filtros ND para motion blur y la edición final en Premiere Pro.

## Lecciones accionables
- **Configuración de cámara en el DJI Avata:**
  - Deshabilitar **RockSteady** y **HorizonSteady** (estabilización integrada) para que la cámara grabe metadatos del giroscopio.
  - Ajustar exposición manual: obturador a **1/120**, resolución **4K a 60 fps**.
  - Seleccionar lente **gran angular** (Cinemex).
  - Usar filtro ND: **Freeway ND64L** para motion blur.
- **Vuelo en modo manual:**
  - Iniciar motores con **dos toques** del botón derecho inferior del mando.
  - Controlar con solo gas y avance.
- **Descarga e instalación de Gyroflow:**
  - Ir a **giroflow.xyz** (enlace en descripción del video).
  - Descargar versión para **Windows o Linux** (gratuito, sin instalación).
  - Extraer el archivo ZIP a una carpeta (ej: "giro Flow" en el disco duro).
  - Ejecutar el archivo .exe; si aparece advertencia de seguridad, hacer clic en **"Más información"** y luego **"Ejecutar de todas formas"**.
- **Uso de Gyroflow:**
  - Arrastrar el archivo de video (ej: "141") a la ventana de la aplicación.
  - Ajustar **Horizon Lock** (recomendado: **80-89%** para no bloquear el horizonte por completo).
  - Ajustar **Smoothing** (recomendado: **0.7** para evitar movimientos abruptos).
  - Hacer clic en **"Export"** y esperar a que termine el procesamiento.
  - El archivo estabilizado se guarda con el mismo nombre + "_stabilized".
- **Edición en Adobe Premiere Pro:**
  - Importar el video original y el estabilizado.
  - Aplicar corrección de color: subir **altos ligeramente**, bajar **sombras**, ajustar **saturación** y **temperatura** para suavizar verdes.
  - Usar **"Paste Color Attributes"** para copiar ajustes entre clips.
  - Crear comparación: superponer clips, añadir efecto **"Crop"** (recorte) para dividir pantalla izquierda/derecha, y agregar una **forma rectangular** como separador visual.
- **Música recomendada:** Usar **arles.io** (enlace en descripción) filtrando por "cinematic" y "electronic" para videos de drones; incluye efectos de sonido.

## Reglas para agentes
- Usa **Gyroflow** (no estabilización integrada del dron) cuando necesites control total sobre la estabilización en postproducción.
- Desactiva **RockSteady** y **HorizonSteady** en el DJI Avata antes de grabar si planeas estabilizar después.
- Ajusta el obturador a **1/120** cuando grabes a **60 fps** para cumplir la regla del doble de velocidad de obturación.
- Usa filtro **ND64** en exteriores soleados para lograr motion blur cinemático.
- Nunca ignores la advertencia de seguridad de Windows al abrir Gyroflow por primera vez; haz clic en "Más información" y "Ejecutar".
- Nunca bloquees el horizonte al **100%** en Gyroflow si quieres conservar sensación de movimiento natural; usa **80-89%**.
- Nunca uses música sin licencia; descarga de **arles.io** filtrando por género y estado de ánimo.

## Errores comunes que evita o menciona
- **No estabilizar en cámara:** Desactivar RockSteady/HorizonSteady permite que el giroscopio grabe metadatos, dando más control en postproducción.
- **No usar filtro ND:** Sin ND, el obturador rápido elimina el motion blur, haciendo que el video se vea entrecortado y menos cinemático.
- **Sobre-estabilizar:** Bloquear el horizonte al 100% elimina todo movimiento natural; se recomienda 80-89% para un look más orgánico.
- **Ignorar la música:** El 70% del atractivo cinemático depende de la banda sonora; usar bibliotecas como arles.io facilita encontrar la pista adecuada.
- **No renderizar antes de comparar:** En Premiere, los clips sin renderizar se ven entrecortados; esperar a que termine la exportación para evaluar la estabilización.