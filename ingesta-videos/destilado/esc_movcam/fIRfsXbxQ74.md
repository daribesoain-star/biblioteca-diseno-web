# 5 GREAT Gimbal Moves MADE EVEN BETTER!
**Fuente:** esc_movcam | https://youtu.be/fIRfsXbxQ74

## Qué enseña (2-3 líneas)
Cómo transformar 5 movimientos básicos de gimbal en tomas intermedias y avanzadas, explicando la intención narrativa de cada uno, la focal recomendada y los modos de gimbal. Enfocado en revelar personajes y entornos de forma dinámica, usando capas de movimiento (vertical + horizontal + rotación) para generar tensión, sorpresa y heroísmo.

## Lecciones accionables

### 1. Crane / Jib Shot (Revelación de locación)
- **Básico:** Cámara baja al suelo, personaje entra, cámara sube horizontal. Focal: 24-35mm. Gimbal: **Lock Mode** (sin tilt/pan).
- **Intermedio:** Iniciar detrás de un objeto en primer plano (ej. arbusto). Añadir movimiento horizontal + vertical. Focal: 35mm. Gimbal: **Lock Mode**.
- **Avanzado:** Combinar side track (zapatos) + swing alrededor + crane up. Invertir gimbal (inverted mode) en **Follow Mode** para pan/tilt suaves.

### 2. Pullback (Revelación de personaje + entorno)
- **Básico:** Cámara cerca del sujeto, caminar hacia atrás. Personaje gira para revelar rostro. Focal: 35mm. Gimbal: **Lock Mode**.
- **Intermedio:** Iniciar con frame vacío, personaje entra al caminar hacia atrás. Focal: 35mm. Gimbal: **Lock Mode**.
- **Avanzado:** Pullback + tracking lateral + foreground object (pasar a través de algo). Focal: 16-35mm. Gimbal: **Follow Mode** (pan + tilt).
- **Variante revelación:** Cámara apuntando arriba (detalle locación) → caminar atrás → tilt down revela personaje. Focal: 35mm. Gimbal: **Follow Mode** (tilt manual, no joystick).
- **Variante inversa:** Cámara apuntando abajo (detalle personaje) → caminar atrás → tilt up revela entorno. Focal: 35mm. Gimbal: **Follow Mode**.

### 3. Tracking Shot (Progresión / acción)
- **Básico:** Side track a ojo del personaje. Composición: personaje en tercio izquierdo si camina a derecha. Focal: 35mm. Gimbal: **Lock Mode**.
- **Intermedio:** Cámara baja al suelo → sube lentamente revelando personaje. Mismo ritmo que personaje. Focal: variable. Gimbal: **Lock Mode**.
- **Avanzado:** Bajo (zapatos) → sube + rota alrededor del personaje → revela entorno + segundo personaje. Gimbal: **Inverted Mode + Follow Mode**.

### 4. Orbit (Hero shot / emoción en entorno)
- **Básico:** Cámara a ojo, caminar alrededor del personaje centrado. Usar side handle para estabilidad. Gimbal: **Pan & Follow Mode** (solo pan activo, tilt bloqueado).
- **Intermedio:** Cámara baja, shoot up hacia personaje (efecto héroe). Fondo interesante (ej. árboles, no cielo gris). Mismo modo.
- **Avanzado:** Añadir foreground objects (parallax effect). Focal larga: **85mm** (comprime fondo, acentúa parallax). Mismo modo.

### 5. Push In / Push Forward (Drama / suspense)
- **Básico:** Cámara lejos a ojo, caminar hacia personaje. Focal: 35mm. Gimbal: **Lock Mode**.
- **Intermedio:** Cámara baja al suelo → push in → sube a rostro. Focal: 24-35mm (wide). Gimbal: **Lock Mode** (no usar tilt motor).
- **Avanzado (cinemático):** Cámara baja → push in → tilt up suave (Follow Mode). Personaje levanta cabeza al unísono. Focal: **85mm**. Rodar a **50fps** y cámara lenta para efecto épico.

## Reglas para el director de fotografía IA

- **Usa "Lock Mode" en prompts** cuando el movimiento sea puro travelling o crane sin rotación de cámara (sin tilt/pan). Ejemplo: *"camera locked, no pan, no tilt, smooth vertical rise"*.
- **Usa "Follow Mode" en prompts** cuando combines tracking + tilt o pan suave. Especifica *"smooth tilt follow"* o *"pan follow character"* para evitar movimientos robóticos.
- **Usa "Inverted Mode"** cuando el gimbal esté invertido (cámara colgando) para tomas bajas que suben. En prompt: *"camera inverted, low angle rising"*.
- **Para parallax effect en IA**, especifica *"foreground objects passing camera, background static, depth separation"*. Usa focal larga (85mm) en el prompt para comprimir el fondo.
- **Para no alucinar en video IA**, evita movimientos compuestos complejos (track + orbit + crane simultáneo) en un solo clip. Separa en 2-3 tomas y únelas en post. La IA tiende a distorsionar la perspectiva si el movimiento es demasiado complejo.
- **Para revelaciones con foreground**, especifica *"camera starts behind [object], reveals subject"*. La IA respeta mejor el desenfoque de primer plano si el objeto está claramente definido en el prompt.
- **Para hero shots low angle**, usa *"camera low, looking up at subject, heroic angle"*. Especifica *"sky or trees in background"* para evitar fondos planos.
- **Para push in dramático**, usa *"slow push in, camera at ground level, rising to face"*. Si usas cámara lenta, añade *"slow motion, 50fps, smooth"*.

## Errores comunes que evita o menciona

- **No usar joystick para tilt** en tomas de revelación (pullback con tilt down/up). El movimiento manual del operador es más suave que el motor del gimbal. En IA: no uses prompts que impliquen control de joystick; mejor *"manual tilt"*.
- **No colocar personaje centrado en tracking shots** si camina en una dirección. Debe ir en el tercio izquierdo (si camina a derecha) para dar espacio visual. En IA: especifica *"subject in left third, walking right"*.
- **No usar fondo plano (cielo gris) en orbit shots**. El fondo debe tener textura (árboles, arquitectura) para que el parallax funcione. En IA: *"background with trees, depth, no empty sky"*.
- **No hacer orbit con gimbal en Lock Mode**. El pan debe estar activo (Pan & Follow) para seguir al sujeto. En IA: *"camera orbits subject, pan follow, no tilt"*.
- **No usar focal corta (16mm) para parallax effect**. La compresión de una focal larga (85mm) acentúa el movimiento relativo entre foreground y background. En IA: *"85mm lens, foreground objects moving faster than background"*.
- **No iniciar crane shot sin foreground element** si buscas dinamismo. El objeto en primer plano añade profundidad y hace que el movimiento se sienta más rápido. En IA: *"camera rises from behind bush, foreground blur"*.
- **No mezclar movimientos sin ensayo previo** (track + orbit + crane). En IA, los movimientos compuestos suelen alucinar la geometría del personaje o el fondo. Mejor dividir en tomas separadas.