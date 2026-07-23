# how to create natural ‘cinematic’ lighting
**Fuente:** esc_luz | https://youtu.be/pxqdbKgCwBw

## Que ensena (2-3 lineas)
Cómo construir iluminación naturalista para entrevistas documentales usando luz motivada por ventanas reales, difusión casera con bounces de 5 en 1, y tubos LED verticales para hair light sutil. Enseña a diagnosticar errores de dirección de luz encendiendo cada fuente una por una, y a reposicionar al talento en lugar de mover luces para cambiar el contraste facial.

## Lecciones accionables

- **Key light motivado por ventana:** Coloca la luz principal en el mismo lado que la ventana más grande del encuadre. Si no hay ventana visible, el ojo no cree la fuente. Usa `key light from window side` en prompts.
- **Difusión barata para luz suave:** Pon un bounce 5 en 1 (5ft x 3ft) a 2-3 pies de distancia de tu LED panel. Punchéalo a través de la difusión del bounce. Resultado: fuente más grande y suave que parece natural. Prompt: `soft key light through diffusion, large source, natural falloff`.
- **Hair light con tubo LED vertical:** Para backlight sutil y amplio, coloca un tubo LED (Pavo Tube) en orientación vertical. Esto da un hard light controlado que se extiende sobre hombros y cabello. Prompt: `vertical tube LED as hair light, subtle rim, 11% intensity`.
- **Contraste facial moviendo al talento, no las luces:** Si el talento se sienta lejos de la cámara, la luz es más plana. Si se inclina hacia adelante, el ratio de contraste sube dramáticamente. Prompt: `subject leaning forward, high contrast ratio, dramatic side key`.
- **Lente zoom f/1.8 para entrevistas:** Sigma 28-45mm f/1.8 permite reencuadrar rápido sin cambiar T-stop. Úsalo para aislar fondo. Prompt: `shot on 35mm at f/1.8, shallow depth of field, interview framing`.
- **Luz de fondo a través de elementos naturales:** Para evitar un rectángulo blanco duro en la pared, pon ramas/árboles reales frente a la ventana. La luz se rompe y se siente orgánica. Prompt: `background light through tree branches, dappled shadow on wall`.
- **Sin fill light:** Prefiere wrap lighting con una fuente grande y suave. Deja que la caída natural cree profundidad. Prompt: `no fill light, natural falloff, single key source`.
- **CRI alto obligatorio:** Usa luces con CRI ≥ 96 para evitar tintes de color en piel. Prompt: `CRI 96, accurate skin tones, no color cast`.

## Reglas para el director de fotografia IA

- **Usa "naturally motivated lighting"** cuando quieras que la fuente de luz parezca venir de una ventana o puerta en el encuadre. No pongas key light del lado opuesto a la ventana visible.
- **Para no alucinar en video IA, evita "hair light" genérico.** Especifica `subtle rim light at 11% intensity, vertical tube, barely visible on cheek` para que no genere un halo irreal.
- **Cuando generes fondo con ventana, añade `tree branches outside window casting shadows`** para que la luz de fondo no sea un rectángulo plano.
- **Usa `subject moving forward in frame`** como prompt de movimiento si quieres que el contraste facial aumente progresivamente. El modelo IA entenderá cambio de iluminación sin mover luces.
- **Para evitar "look de noticiero CNN",** nunca pongas hair light al 100% ni key light frontal simétrico. Prompt: `documentary interview lighting, naturalistic, no news-style fill`.
- **En prompts de cámara, especifica `Sigma 28-45mm f/1.8 zoom`** si quieres ese rango focal con profundidad de campo controlada. Alternativa: `35mm prime at f/1.8`.
- **Usa `ISO 2500, available light mix`** cuando quieras que la IA entienda que hay luz ambiente real mezclada con luz artificial.

## Errores comunes que evita o menciona

- **Poner el key light donde no hay ventana:** El ojo no cree la fuente. Siempre verifica encendiendo cada luz una por una (key, hair, background) para ver si la dirección es lógica.
- **Hair light demasiado brillante:** Parece entrevista de CNN o "film set clásico". Mantenlo por debajo del 15% de intensidad.
- **Luz de fondo directa sin romper:** Un rectángulo blanco duro en la pared se ve falso. Siempre interpone un elemento (árbol, cortina, persiana) para texturizar.
- **No mover al talento para cambiar contraste:** Es más rápido reposicionar a la persona que reajustar luces. Un simple movimiento hacia adelante duplica el ratio de contraste.
- **Usar zoom con apertura variable:** Los zooms que no son f/1.8 obligan a subir ISO o perder profundidad. Prefiere lentes con apertura constante.
- **Confiar en el ojo sin cámara:** Lo que se ve bien en persona puede no funcionar en cámara. Siempre monta la cámara primero y mueve una luz por la habitación para encontrar el mejor ángulo.