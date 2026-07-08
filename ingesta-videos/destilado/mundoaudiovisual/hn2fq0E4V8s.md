# DJI Mini 5 Pro: How to Edit CINEMATIC Footage in DaVinci Resolve 21
**Fuente:** mundoaudiovisual | https://youtu.be/hn2fq0E4V8s

## Qué enseña
Cómo editar y etalonar footage de dron DJI Mini 5 Pro en DaVinci Resolve 21 para lograr un resultado cinematográfico, incluyendo ajuste de color, máscaras, desenfoque de fondo, cámara lenta y speed ramps sincronizados con música.

## Lecciones accionables
- Crear proyecto nuevo con resolución **3840×2160** y **25 fps** (aunque el metraje esté grabado a 50 fps)
- Al importar clips grabados a 50 fps, responder **"No"** cuando pregunte si cambiar la frecuencia del proyecto
- Bloquear la pista de audio con el botón de candado antes de cortar clips (atajo **B** para la cuchilla)
- Para cámara lenta: si el proyecto está a 25 fps y el clip a 50 fps, reducir la velocidad al **50%** (usar calculadora de slow motion en mundoaudiovisual.es)
- Para copiar nodos de color entre clips: hacer clic con el **botón central del ratón** sobre el clip destino
- Para speed ramp: presionar **Command + R**, añadir puntos de velocidad, y convertir los keyframes en **curvas** para transiciones orgánicas
- Ajustar la velocidad de un tramo seleccionado al **100%** para normalizarlo después de un cambio de velocidad

**Proceso de etalonaje paso a paso:**
1. Crear primer nodo (corrección primaria): bajar exposición, aumentar saturación, ajustar balance de blancos hacia tonos más cálidos
2. Añadir nodo en serie → crear máscara circular del molino → invertir máscara → bajar **Gain** para efecto viñeta
3. Duplicar nodo anterior (Edición → Pegar atributos) → añadir **blur intensity** para desenfocar fondo
4. Añadir nodo en serie → ir a **Specific Colors** → seleccionar el cielo → aumentar saturación → desplazar tono hacia los rojos
5. Añadir nodo en serie → saturar ligeramente más

## Reglas para agentes
- Usa **25 fps** como frecuencia de proyecto cuando el metraje esté grabado a 50 fps para permitir cámara lenta sin interpolación
- Bloquea siempre la pista de audio antes de cortar clips en la línea de tiempo
- Copia los nodos de color con **clic central del ratón** sobre el clip destino, no manualmente
- Convierte los keyframes de speed ramp en **curvas** para evitar transiciones abruptas de velocidad
- Nunca cambies la frecuencia del proyecto al importar clips a 50 fps si tu intención es mantener 25 fps

## Errores comunes que evita o menciona
- No cambiar la frecuencia del proyecto al importar (si se acepta el cambio, el proyecto se pondría a 50 fps y se perdería la capacidad de hacer cámara lenta)
- No aplicar desenfoque de fondo en todos los clips (solo cuando sea estéticamente adecuado)
- No dejar la velocidad al 50% en toda la línea de tiempo (usar speed points para alternar entre 50% y 100% según el ritmo)
- No editar sin música de referencia (la edición cinematográfica debe sincronizarse con el ritmo musical)