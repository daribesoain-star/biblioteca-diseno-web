# Kling 3.0 Review: Realism, Camera Moves, and Emotion Tested
**Fuente:** ai_kling | https://youtu.be/jQvHqKrGhy8

## Que ensena
Kling 3.0 mejora drásticamente la comprensión de movimientos de cámara, física realista y emociones humanas en video IA. El tutorial enseña a estructurar prompts cinematográficos detallados (quién, dónde, acción, cámara) y aprovechar funciones nuevas como multi-shot (cortes de escena), referencia facial y fotogramas de inicio/fin. Demuestra que con prompts menos verbosos se obtienen resultados más naturales, priorizando la intención sobre la descripción exhaustiva.

## Lecciones accionables

### Estructura de prompt para text-to-video (sin keyframe)
- **Orden obligatorio:** `[sujeto] + [ubicación] + [acción] + [comportamiento de cámara]`
- **Ejemplo del video:** *"Military action in a trench. Camera runs behind a soldier. An explosion nearby. The camera briefly loses orientation, then recovers."*
- **Parámetro clave:** Activar **multi-shot** para generar hasta 6 cortes de escena en una sola generación (ej: primera mitad wide angle, segunda mitad close-up u over-the-shoulder).

### Prompt para image-to-video (recomendado 95% del tiempo)
- **Regla:** "Less is better" con Kling 3.0. No detallar en exceso.
- **Ejemplo emociones:** `"Strong emotions"` + imagen de mujer llorando → zoom in + pan right sutiles.
- **Ejemplo cámara compleja:** `"Robotic arm. Camera performs a fast lateral pass left to right. Then a brief crash push in to the face. Then a quick pull back and the fast pass back right to the left. Robotic arm. Very snappy acceleration."`
- **Ejemplo zoom + detalle:** `"A girl grabs one fried onion. The handheld camera zooms in and stops on the lips just as she takes the bite. Add a brief slow motion to the bite itself."`
- **Ejemplo VFX:** `"The dragon roars, flaps his wings, and fires a massive fire breath towards the citizens below. Handheld shaky camera."`
- **Duración óptima:** 12 segundos (no 15) para mejores resultados.

### Parámetros y funciones nuevas
- **Character reference:** Subir foto de rostro como referencia para mantener consistencia facial incluso si el personaje está de espaldas en el frame inicial.
- **Start and end frames:** Subir dos imágenes no relacionadas; la IA rellena la transición. Ideal para transiciones entre tomas.
- **Multi-shot con speech:** Prompts separados por escena. Ejemplo:
  - Escena 1: `"Medium shot of the young man and woman standing by the fence at night. The man is speaking earnestly, his face illuminated by the warm light from the apartment building."`
  - Escena 2: `"Reverse angle over the shoulder shot, focusing on the woman. She listens with a serious expression, then looks down and sighs before looking back up to respond."`
  - Escena 3: `"Over the shoulder shot, focusing on the man, he listens as the woman responds."`

### Focales y movimientos implícitos
- El modelo imita **rolling shutter** y **handheld shake** automáticamente cuando el prompt lo sugiere.
- **Push in / pull back** funcionan con descripciones literales: *"crash push in to the face"*, *"quick pull back"*.
- **Lateral pass** (left to right / right to left) con *"very snappy acceleration"* produce movimientos de cámara robótica realistas.

## Reglas para el director de fotografía IA

1. **Usa "handheld shaky camera" en prompts de acción o VFX** cuando quieras sensación de cámara en mano realista; Kling 3.0 lo interpreta como ligero temblor y desenfoque de movimiento.
2. **Para no alucinar rostros en video IA**, sube siempre una **character reference photo** incluso si el personaje aparece de espaldas en el frame inicial. Sin esto, Kling 2.6 alucinaba caras; 3.0 las inserta sin morphing.
3. **Usa multi-shot para cambios de plano** en lugar de generar clips separados; el modelo mantiene consistencia facial y de iluminación entre cortes.
4. **Para diálogos con lip-sync**, estructura cada escena como prompt independiente dentro del multi-shot; el modelo sincroniza labios incluso entre diferentes ángulos (medium shot → over-the-shoulder).
5. **Limita la duración a 12 segundos** aunque el modelo permita 15; los resultados son más estables y con menos artefactos.
6. **Para transiciones entre tomas no relacionadas**, usa start and end frames sin prompt; la IA rellena la transición creativamente.
7. **Cuando busques realismo extremo**, describe el sonido implícito en el prompt (ej: *"ASMR feel"*, *"sound effects"*); Kling 3.0 genera audio sincronizado con la acción.

## Errores comunes que evita o menciona

- **Sobredetallar el prompt en image-to-video:** El video muestra que con Kling 3.0, prompts cortos como *"Strong emotions"* o *"A dynamic fight"* producen resultados más naturales que descripciones largas.
- **No usar referencia facial cuando el personaje está de espaldas:** Sin la foto de referencia, el modelo alucina una cara diferente o la morphing.
- **Generar a 15 segundos en lugar de 12:** El creador nota que la calidad óptima se obtiene a 12 segundos; más duración introduce inestabilidad.
- **Ignorar el multi-shot para cambios de plano:** Sin esta función, los cortes entre escenas pierden consistencia facial y de iluminación.
- **Esperar que el modelo entienda "cámara pierde orientación" sin describir la acción:** El prompt *"camera briefly loses orientation, then recovers"* funciona porque se combina con una explosión que justifica el movimiento errático.
- **Usar text-to-video sin contexto suficiente:** El creador advierte que sin keyframe hay que dar *"as much information as possible"* siguiendo la estructura quién-dónde-acción-cámara.