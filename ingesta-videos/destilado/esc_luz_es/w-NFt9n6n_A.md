# 1️⃣. ANGULACIÓN o DIRECCIÓN de la LUZ - Curso de ILUMINACIÓN | VioletaPhoto
**Fuente:** esc_luz_es | https://youtu.be/w-NFt9n6n_A

## Que ensena (2-3 lineas)
La dirección de la luz en los ejes horizontal y vertical determina sombras, volumen, textura y narrativa en retrato. Explica 6 posiciones clave (frontal, 3/4, lateral, contraluz, cenital, contrapicado) y cómo cada una cambia el estado de ánimo. Enfatiza que la sombra apunta en dirección opuesta a la fuente de luz.

## Lecciones accionables

### Eje Horizontal (ángulos de cámara para prompts)

- **Frontal (0°)**: Luz directa a la cara. Sin sombras, rostro plano, piel suave. Ideal para belleza, pasaportes, ojos brillantes.
  - *Prompt técnico:* `flat lighting, soft front light, no shadows, even illumination on face`
  - *Parámetros:* Sin contraste, baja profundidad.

- **Semi-lateral / 3/4 (45°)**: Luz a 45° horizontal + 45° vertical = **Rembrandt lighting**. Triángulo de luz en mejilla opuesta. Volumen, profundidad, natural.
  - *Prompt técnico:* `Rembrandt lighting, 45-degree key light, triangle of light on cheek, chiaroscuro portrait`
  - *Focal sugerida:* 85mm-135mm para retrato.

- **Lateral (90°)**: Divide la cara en luz/sombra. Drama, tensión, misterio. Alto contraste.
  - *Prompt técnico:* `side lighting, split lighting, 90-degree key light, half face in shadow, dramatic contrast`
  - *Movimiento:* Cámara lenta dolly-in para tensión.

- **Semi-contraluz (135-140°)**: Luz detrás del sujeto, ilumina un lado de la silueta. Separa del fondo, da tridimensionalidad.
  - *Prompt técnico:* `semi-backlight, rim light on one side, 135-degree key light, subject separation from background`
  - *Parámetros:* Añadir `backlight` y `rim light` en prompts.

- **Contraluz (180°)**: Luz directamente detrás. Silueta completa, bordes iluminados. Ideal para separación o siluetas.
  - *Prompt técnico:* `backlight, silhouette, rim light on edges, high contrast, subject in shadow, golden hour backlight`
  - *Movimiento:* Cámara lenta lateral tracking para revelar silueta.

### Eje Vertical

- **Cenital (90° arriba)**: Luz sobre la cabeza. Sombras duras bajo cejas, nariz, barbilla. Aspecto dramático, como sol de mediodía.
  - *Prompt técnico:* `top lighting, overhead light, hard shadows under eyes and chin, noon sun, dramatic shadows`
  - *Cuidado:* En video IA, puede crear sombras no realistas en ojos.

- **Alta (45° arriba)**: Luz a 45° vertical. Combinada con 45° horizontal = Rembrandt. Esquema básico de retrato.
  - *Prompt técnico:* `high angle key light, 45-degree overhead, Rembrandt setup, natural portrait lighting`

- **Frontal (0° vertical)**: Misma que frontal horizontal. Luz directa.

- **Contrapicado / Nadir (debajo del ojo)**: Luz desde abajo. Aspecto terrorífico, sombras hacia arriba. Como linterna en cuentos de miedo.
  - *Prompt técnico:* `underlighting, low angle light, horror lighting, shadows pointing upward, flashlight from below, eerie face`
  - *Uso narrativo:* Sujeto en cama mirando teléfono, escenas de suspenso.

### Prompt Verbatim (extraídos del video)
- `Rembrandt lighting scheme`
- `split lighting`
- `rim light`
- `silhouette`
- `dramatic shadows`

## Reglas para el director de fotografia IA

- **Usa `Rembrandt lighting` en prompts** cuando quieras volumen natural y profundidad en retratos; es el esquema más versátil para video IA.
- **Usa `split lighting` o `side lighting`** para escenas de tensión, interrogatorios, personajes ambiguos o nocturnos.
- **Usa `backlight` + `rim light`** siempre que necesites separar sujeto de fondo en planos abiertos o con poca luz ambiental.
- **Usa `underlighting` o `low angle light`** solo para terror, suspenso o escenas oníricas; en otros contextos alucina sombras irreales.
- **Para no alucinar en video IA:** evita mezclar `top lighting` con `backlight` en el mismo prompt, pues el modelo puede generar sombras contradictorias.
- **Para prompts de Veo 3 / Kling / Runway:** especifica siempre la dirección de la luz antes del movimiento de cámara. Ejemplo: `Rembrandt lighting, slow dolly in on face, cinematic 85mm`.
- **Regla de la sombra:** la fuente de luz está en el lado opuesto a donde apunta la sombra. Úsalo para depurar prompts: si la sombra apunta a la izquierda, la luz debe estar a la derecha.

## Errores comunes que evita o menciona

- **Iluminar todo por igual:** el error de principiante es no crear sombras; la luz sin sombras aplana la imagen.
- **No considerar el eje vertical:** muchos solo mueven la luz en horizontal y olvidan que la altura cambia completamente la narrativa (cenital vs. contrapicado).
- **Confundir semi-contraluz con contraluz:** el semi-contraluz ilumina solo un lado de la silueta; el contraluz ilumina todo el borde.
- **Usar luz frontal para drama:** la luz frontal elimina sombras, no genera tensión; para drama usa lateral o contrapicado.
- **No verificar la dirección de la sombra:** en video IA, si la sombra no coincide con la luz declarada en el prompt, el resultado se ve falso.