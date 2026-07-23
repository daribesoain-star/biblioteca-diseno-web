# Higgsfield presets camera movement tutorial
**Fuente:** hf_presets | https://youtu.be/Higgsfield presets camera movement tutorial

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a usar la función **Draw to Video** de Higgsfield AI para controlar el movimiento de una imagen mediante flechas dibujadas, resolviendo el problema del movimiento aleatorio en IA. Cubre pruebas de velocidad, largo de flechas, efectos virales (invisibilidad, FPV drone, explosiones) y el uso del modelo **Google Veo 3.1** para resultados cinematográficos.

## Tips y flujos accionables

### Flujo básico para Draw to Video
1. Ve a la página principal de Higgsfield → selecciona **Video** en la navegación superior.
2. Elige **Draw to Video**.
3. Sube la foto que quieras animar.
4. En la interfaz de edición, selecciona el modelo: **Google Veo 3.1** (recomendado por ser el más reciente y de alta calidad).
5. Usa la **herramienta de flecha (arrow tool)** para dibujar la trayectoria de movimiento deseada.
6. Con la **herramienta de texto**, añade un prompt cerca de la flecha (ej: "Another boxer hits his face" o "Another car chasing this buggy").
7. Haz clic en **Generate**.

### Control de velocidad con largo de flecha
- **Flecha corta**: la velocidad aumenta desproporcionadamente, resultando en movimiento exagerado.
- **Flecha larga (doble de largo)**: la velocidad aumenta desproporcionadamente, se siente antinatural.
- **Flecha mediana**: proporciona el movimiento más equilibrado y cinematográfico. **Usa siempre largo medio** para resultados realistas.

### Efecto de invisibilidad (sin máscaras ni rotoscopia)
1. Selecciona el sujeto en la imagen.
2. Escribe el prompt: **"erase"**.
3. Genera. El modelo inpinta la escena como si el sujeto fuera invisible moviéndose por el entorno.

### Simulación FPV drone
1. En el dashboard de Higgsfield, ve a **Camera Controls**.
2. Selecciona la opción **FPV Drone**.
3. Sube cualquier foto de paisaje.
4. Haz clic en **Generate**. Obtendrás un falso plano FPV drone que se ve sorprendentemente real.

### Efectos virales (sección Viral Effects)
- **Raven Effect**: ve a la sección **Viral** → selecciona el primer efecto → sube el primer y último frame → genera. La transición es extremadamente suave.
- **Earth Zoom Out**: en Viral Effects → selecciona **Earth Zoom Out** → sube la imagen → genera. Resultado de alto impacto.
- **Building Explosion**: en Viral Effects → selecciona el efecto → sube una foto con edificios → genera. Obtienes una explosión completamente renderizada.

### Prompts para look cinematográfico
Usa frases como: *"cinematic lighting, volumetric fog, 4K, golden hour, soft warm highlights, high dynamic range, clean contrast"*. La dirección de iluminación no anula el movimiento dibujado, pero mejora drásticamente el realismo del render.

## Reglas para el erudito de Higgsfield
- Para **control preciso de movimiento** usa **Draw to Video** con **Google Veo 3.1** y flechas de **largo medio**.
- Para **efecto de invisibilidad** usa el prompt **"erase"** sobre el sujeto seleccionado.
- Para **simular FPV drone** usa **Camera Controls → FPV Drone** con una foto de paisaje.
- Para **transiciones suaves** (Raven Effect) usa **Viral Effects → primer efecto** con primer y último frame.
- Para **explosiones de edificios** usa **Viral Effects → Building Explosion** con foto que contenga edificios.
- Para **zoom out planetario** usa **Viral Effects → Earth Zoom Out** con cualquier imagen.
- Para **resultados cinematográficos** añade al prompt: *"cinematic lighting, volumetric fog, 4K, golden hour, soft warm highlights, high dynamic range, clean contrast"*.

## Errores comunes / que evitar
- **No uses flechas muy cortas o muy largas**: producen velocidad desproporcionada y movimiento antinatural. Siempre prefiere largo medio.
- **No confíes en prompts genéricos**: si no especificas iluminación y atmósfera, el render se verá plano. Usa los términos cinematográficos recomendados.
- **No subestimes el efecto de invisibilidad**: no requiere máscaras ni rotoscopia, solo el prompt "erase" sobre el sujeto.
- **No ignores la sección Viral Effects**: efectos como Raven, Earth Zoom Out y Building Explosion están preconfigurados y listos para usar, no necesitas configurarlos manualmente.
- **No uses modelos antiguos**: siempre selecciona **Google Veo 3.1** para la mejor calidad.