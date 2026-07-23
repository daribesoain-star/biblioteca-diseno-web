# cinematography lighting tutorial director of photography camera movement
**Fuente:** en_dp2 | https://youtu.be/cinematography lighting tutorial director of photography camera movement

## Que ensena
Este tutorial desglosa la iluminación cinematográfica en cinco atributos fundamentales: Dirección, Calidad (suavidad), Color, Intensidad y Corte/Forma. Enseña a usar la dirección de la luz (frontal, mariposa, Rembrandt, lateral, kicker, contraluz) para crear estado de ánimo y profundidad, y explica cómo la relación de tamaño entre fuente y sujeto determina la dureza o suavidad de las sombras.

## Lecciones accionables

### Dirección de luz (Lighting Direction)
- **Front Light:** Luz en eje con cámara. Crea imagen plana, elimina sombras faciales. Para prompts: `front lighting, flat lighting, on-axis light`
- **Butterfly Light:** Luz frontal alta apuntando hacia abajo. Sombra de nariz en forma de mariposa. Usar con bounce board bajo el talento para rellenar sombras en cuencas profundas. Prompt: `butterfly lighting, high front key light, nose shadow butterfly shape`
- **Rembrandt Light:** Luz a 45° del eje visual y 45° hacia abajo. Triángulo de luz en lado sombra. Prompt: `Rembrandt lighting, 45 degree key light, triangle light on shadow side`
- **Side Light:** Luz a 80-90° del eje. Divide la cara en luz/sombra. Prompt: `side lighting, dramatic split lighting, 80 degree key light`
- **Kicker/Edge Light:** Luz 15-45° detrás del sujeto. Crea borde en hombros y mejilla. Prompt: `kicker light, edge light, rim light from behind, 30 degree back rim`
- **Backlight:** Luz directamente detrás del sujeto. Sin envolvimiento en mejilla. Prompt: `backlight, hair light, rim light behind subject, high backlight pointing down`

### Calidad de luz (Light Quality / Softness)
- **Hard Light:** Fuente pequeña relativa al sujeto. Sombras definidas. Prompt: `hard light, direct light, small light source, sharp shadows`
- **Soft Light:** Fuente grande relativa al sujeto. Sombras difusas (penumbra grande). Prompt: `soft light, diffused light, large light source, soft shadows, big diffusion frame`
- Para suavizar: acercar la fuente al sujeto o difundir. Para endurecer: alejar o spotear la unidad.
- **Parámetro clave:** `relative size of light source to subject`

### Color (Color Temperature)
- **Kelvin scale:** Bajo = naranja (3200K tungsteno), Alto = azul (5600K día). Prompt: `warm 3200K key light, cool 5600K fill, tungsten white balance`
- **Técnica creativa:** Balancear cámara a temperatura de luz clave, luego ajustar otras luces. Ejemplo: cámara a 3200K, luz clave a 3200K, práctica a 2000K, haz a 4800K.
- **Efectos:** Cámara a 4800K con luz a 5600K = frío/invierno. Cámara a 5600K con luz a 4200K = tarde. Luz a 5600K con cámara a 4200K = luz de luna azulada.
- **Gels:** Usar Primary Red gel corta longitudes de onda, reduce intensidad. Prompt: `CTO gel, CTB gel, plus green gel, full minus green`

### Intensidad y Ratio (Key to Fill Ratio)
- **Key to Fill Ratio:** Diferencia en stops entre lado clave y lado sombra.
  - 1 stop = 2:1 ratio (dos veces más brillante el lado clave)
  - 2 stops = 4:1 ratio
  - 3 stops = 8:1 ratio
  - 4 stops = 16:1 ratio
- **Foreground to Background Ratio:** Sujeto 1-1.5 stops más brillante que fondo para separación natural.
- **Negative Fill:** Usar 4x4 floppy en lado sombra para cortar luz ambiental. Prompt: `negative fill, 4x4 floppy on shadow side, high contrast ratio 4:1`

### Corte y Forma (Cut & Shape)
- **Flags:** Usar sider (flag lateral) para controlar spill de luz clave en fondo.
- **Regla de distancia:** Cuanto más lejos el flag de la fuente, más limpio el corte.
- **Con difusión:** Colocar flag entre difusor y sujeto, no entre luz y difusor.
- **Topper:** Flag que corta porción superior del haz para oscurecer fondo sin afectar sujeto.
- **Snapgrids/Egg crates:** En softboxes para mantener suavidad y minimizar spill. Prompt: `snapgrid on softbox, egg crate grid, flagged light, hard cut on background`

## Reglas para el director de fotografia IA

1. **Usa dirección de luz primero en el prompt:** La dirección dicta el mood más que cualquier otro atributo. Siempre especifica `Rembrandt lighting`, `side lighting`, `butterfly lighting` antes que calidad o color.

2. **Para no alucinar sombras en video IA:** Especifica la posición de la luz en relación al sujeto. Usa `light from camera left at 45 degrees` o `key light high and behind subject`. Si no defines posición, la IA puede generar sombras inconsistentes entre frames.

3. **Usa "relative size of light source" para controlar suavidad:** En prompts, especifica `large softbox close to subject` para sombras suaves, o `small bare bulb far from subject` para sombras duras. La IA tiende a generar luz suave por defecto.

4. **Para separar sujeto de fondo en IA:** Usa `backlight` o `rim light` explícitamente. Sin esto, la IA puede fusionar sujeto y fondo en planos oscuros.

5. **Controla ratio de contraste con prompts numéricos:** `high contrast 4:1 key to fill ratio` o `low contrast 2:1 ratio`. La IA entiende mejor "high contrast" que descripciones cualitativas.

6. **Usa "practical lamp" o "motivated light" para realismo:** Si la fuente es visible en frame, especifica `light motivated by practical lamp at 2000K`. Esto reduce alucinaciones de iluminación imposible.

7. **Para blocking dinámico en IA:** Describe cómo la luz cambia con el movimiento del personaje. `As character walks, light transitions from backlight to Rembrandt`. La IA de video necesita esta continuidad.

## Errores comunes que evita o menciona

- **Front lighting plano:** Elimina toda profundidad facial. En IA, evita `front lighting` a menos que busques deliberately flat look.
- **Iluminar fondo y sujeto con misma luz:** Separa siempre la luz de fondo de la luz clave. En prompts, usa `background light separate from key light`.
- **No considerar blocking:** Una sola luz puede ser backlight para un personaje y Rembrandt para otro. En IA, especifica cómo la luz afecta a cada personaje individualmente.
- **Olvidar que la luz pierde intensidad al difundir o gelificar:** En IA, si usas `heavy diffusion` o `full CTO gel`, compensa con `high intensity key light` para evitar subexposición.
- **Usar luz dura para simular fuente suave:** Si extiendes una luz (ej. ventana), es más fácil que la IA acepte una luz más suave que la fuente real. No intentes `hard window light` si la ventana es pequeña.
- **No usar negative fill:** En IA, si no especificas `negative fill on shadow side`, la IA rellenará sombras con luz ambiental, reduciendo contraste dramático.