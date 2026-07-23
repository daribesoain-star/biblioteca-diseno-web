# The Lighting Techniques That Make Films Look Expensive
**Fuente:** esc_luz | https://youtu.be/XjCP1fUT0xM

## Que ensena (2-3 lineas)
Domina los fundamentos de iluminación cinematográfica (calidad de luz, dirección, exposición, temperatura de color) para transformar cualquier escena en una imagen de alto presupuesto. Enseña a motivar la luz desde fuentes prácticas del entorno y a usar 3 luces como máximo para lograr profundidad, separación y atmósfera.

## Lecciones accionables

### 1. Calidad de luz: Soft vs Hard
- **Soft light**: fuente grande + cercana al sujeto → sombras suaves, transiciones graduales.
- **Hard light**: fuente pequeña + lejana → sombras nítidas, bordes duros.
- **Prompt técnico**: `soft key light from large softbox close to subject`, `hard rim light from distant bare bulb`.
- **Parámetro clave**: distancia y tamaño aparente de la fuente.

### 2. Dirección de la luz y emoción
- **Frontal (0°)**: plano, sin misterio. Útil para comedia o belleza. Prompt: `flat front lighting, even exposure`.
- **Lateral (90°)**: esculpe el rostro, añade tensión. Prompt: `strong side light, deep shadow on opposite side of face`.
- **Cenital (desde arriba)**: opresivo, dramático. Prompt: `top light, shadows under eyes and chin, Godfather style`.
- **Contraluz (detrás)**: separa del fondo, crea halo. Prompt: `backlight, rim light separating subject from background`.
- **Práctica**: coloca la luz en el mismo lado que la fuente práctica (ventana, farola) para motivación realista.

### 3. Exposición con propósito
- **Silueta**: fondo sobreexpuesto (100 IRE) + sujeto sin luz. Prompt: `silhouette against bright background, subject in complete darkness, backlit rain`.
- **Subexposición selectiva**: oculta información, crea misterio. Prompt: `underexposed shadow side, only partial face revealed`.
- **Rango seguro para piel**: 50-70 IRE en falsos colores. Prompt: `skin tones at 60 IRE, natural exposure`.
- **Uso de falsos colores**: para ver clipping y ajustar luces.

### 4. Temperatura de color (Kelvin)
- **Cálido (2700-3200K)**: interior, lámparas, velas. Prompt: `warm 3200K key light, cozy atmosphere`.
- **Frío (5600-6500K)**: luz de día, ventanas, exteriores. Prompt: `cool 6500K window light, blue ambient fill`.
- **Contraste de color**: mezclar temperaturas para separar planos. Prompt: `warm key light 3200K, cool background 6500K, color contrast`.
- **Medición**: usar colorímetro o app para igualar luces a la fuente práctica.

### 5. Setup de 3 luces (escena interior comedor)
- **Key light**: C300 + softbox con rejilla, 3200K, cenital ligeramente lateral. Prompt: `overhead key light with grid, soft directional beam, 3200K`.
- **Background light**: C60 + octobox 40", 6500K, fuera de ventana. Prompt: `window light 6500K, soft fill from outside`.
- **Edge light**: sutil, para separar sujeto del fondo oscuro. Prompt: `subtle edge light, rim separation`.
- **Variación**: añadir lámparas prácticas cálidas en fondo. Prompt: `practical lamps in background, warm 2700K, depth and visual interest`.

### 6. Escena de ventana (día nublado)
- **Exponer para la ventana**: ventana a 100 IRE (clipping controlado). Prompt: `window at 100 IRE, overcast sky`.
- **Key light motivado**: C300 + softbox con rejilla, 6500K, misma temperatura que ventana. Prompt: `motivated key light from window, 6500K, soft grid`.
- **Atenuación**: key al 70% para que sea más tenue que la ventana. Prompt: `key light dimmer than window, natural falloff`.
- **Fill bounce**: C150X apuntando a pared para rellenar sombras al 20%. Prompt: `bounce fill off wall, 20% intensity, soft ambient`.
- **Close-up push**: C60 + softbox justo fuera de cuadro al 20%. Prompt: `close soft fill on face, 20%, natural push`.

### 7. Tracking shot nocturno en calle
- **Motivación desde farolas**: colocar sujeto de espaldas a farola para edge light. Prompt: `backlit by street lamp, rim light separating subject`.
- **Key light en mismo lado que farola**: C60X + softbox 40", temperatura medida de farola (ej. 1900K). Prompt: `key light motivated by street lamp, 1900K, same side as practical`.
- **Evitar sombra de softbox**: mover inicio del personaje a zona con árboles que rompan luz. Prompt: `dappled light from trees, hiding softbox shadow`.
- **Escaparates como fuente**: elegir tramo de calle con luces solo de un lado. Prompt: `shop window light as key, single side illumination`.

### 8. Silueta con lluvia
- **Fondo iluminado**: C60 a 2700K, 100%, iluminando toda la pared del fondo. Prompt: `bright background 2700K, full exposure`.
- **Sujeto a oscuras**: sin luz directa, solo silueta. Prompt: `subject in complete darkness, silhouette against lit background`.
- **Contraluz para lluvia**: luz fría 6800K, máxima potencia, iluminando gotas. Prompt: `backlight for rain, 6800K, high intensity, rain drops visible`.
- **Orden de capas**: fondo → sujeto (oscuridad) → lluvia → cámara.

## Reglas para el director de fotografia IA

- **Usa soft light con grid** cuando quieras control direccional sin spill; en video IA, evita luces sin rejilla que generan halos no deseados.
- **Motiva siempre la luz desde una fuente visible o implícita** en la escena; para no alucinar en video IA, la dirección de la luz debe coincidir con sombras y reflejos del entorno.
- **Mantén la temperatura de color consistente** entre todas las luces de una misma escena; si mezclas, hazlo con intención narrativa (cálido/frío para separar planos).
- **Usa falsos colores o waveform** mentalmente al promptear: piel entre 50-70 IRE, ventanas a 100 IRE, sombras a 0-20 IRE.
- **Para siluetas en video IA**, asegura que el fondo esté sobreexpuesto y el sujeto sin luz directa; añade contraluz para partículas (lluvia, polvo) que den profundidad.
- **En tracking shots nocturnos**, elige tramos con iluminación unilateral para evitar sombras múltiples; en IA, especifica `single light source direction` para coherencia.
- **Añade edge light** cuando el sujeto se funda con el fondo oscuro; prompt: `rim light, separation from background`.
- **Para escenas de ventana**, iguala temperatura y calidad de luz entre interior y exterior; en IA, usa `soft window light, overcast, 6500K, natural falloff`.

## Errores comunes que evita o menciona

- **Luz frontal plana**: elimina profundidad y misterio; solo para comedia o belleza.
- **Softbox demasiado lejos**: actúa como fuente pequeña (dura); acércala al sujeto para suavizar.
- **Sombra de softbox visible en tracking**: solucionado moviendo el inicio del personaje a zona con árboles que rompan la luz.
- **Key light más brillante que la ventana**: rompe la motivación natural; debe ser más tenue.
- **No medir temperatura de color de fuentes prácticas**: causa desajuste cromático; usa colorímetro o app.
- **Iluminar desde ambos lados en exteriores nocturnos**: elimina el contraste y la forma; elige un solo lado dominante.
- **Falta de separación entre sujeto y fondo oscuro**: añade edge light o backlight sutil.
- **Sobreexponer piel sin intención**: mantener entre 50-70 IRE para rango natural.