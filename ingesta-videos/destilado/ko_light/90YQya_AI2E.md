# 영화, 드라마, 광고 촬영을 위한 3점 조명 촬영기법 - 삼점 조명 촬영조명 기술
**Fuente:** ko_light | https://youtu.be/90YQya_AI2E

## Que ensena (2-3 lineas)
El video desglosa el sistema de iluminación de tres puntos (three-point lighting) —Key Light, Fill Light y Back Light— como base técnica para cine, drama y publicidad. Explica cómo cada luz cumple una función específica: la Key define la dirección y textura principal, la Fill controla el contraste de sombras, y la Back Light separa al sujeto del fondo creando profundidad y silueta. Además, muestra cómo adaptar este esquema estático a escenas en movimiento y situaciones imprevistas en rodaje.

## Lecciones accionables
- **Key Light (Luz Principal):** Colocar a 45° del eje cámara-sujeto, ligeramente por encima de la línea de los ojos. En prompts IA usar: `key light from camera-left at 45 degrees, hard light source, high contrast shadows`.
- **Fill Light (Luz de Relleno):** Opuesta a la Key, a menor intensidad (ratio 2:1 a 4:1 respecto a Key). Para prompts: `soft fill light, low intensity, diffused, ratio 3:1 key-to-fill`.
- **Back Light / Rim Light (Luz Trasera / de Contorno):** Detrás del sujeto, apuntando hacia la nuca/hombros. Prompt: `rim light, backlight separating subject from background, edge lighting on hair and shoulders`.
- **Parámetros de cámara para prompts:** Usar `focal length 50mm` para planos medios, `85mm` para primeros planos con compresión. Apertura `f/2.8` para desenfoque suave de fondo. `Shutter speed 1/50` para look cinematográfico 24fps.
- **Movimiento de cámara:** Para escenas con movimiento, especificar `dolly shot` o `tracking shot` manteniendo la relación de luces. En Kling/Veo: `camera slowly pushes in on subject, three-point lighting setup remains consistent`.
- **Prompt Verbatim sugerido:** `Cinematic three-point lighting setup: hard key light from upper right, soft fill from left at 50% intensity, warm backlight rim light. Shot on 50mm lens at f/2.8, shallow depth of field. Moody atmosphere, high contrast, film grain.`
- **Variables a incluir en prompt:** `mood: dramatic`, `camera angle: low angle`, `scale: medium close-up`, `lighting ratio: 4:1`.

## Reglas para el director de fotografia IA
- **Usa Key Light dura cuando** quieras textura, drama o sombras definidas (noir, thriller). Usa Key Light suave (difusa) para belleza, entrevistas o publicidad de productos.
- **Para no alucinar en video IA:** Especifica siempre la dirección de la luz en el prompt (`light from above-right`, `fill from left`). La IA tiende a generar iluminación plana si no se define.
- **Define el ratio Key-to-Fill** explícitamente: `high contrast (4:1)` para drama, `low contrast (2:1)` para naturalismo.
- **Back Light obligatorio** en planos cerrados para evitar que el sujeto se fusione con el fondo. Prompt: `rim light on subject's hair and shoulders, 3D separation`.
- **Para movimiento:** Usa `consistent lighting throughout scene` o `lighting remains stable` para evitar que la IA cambie la fuente de luz entre frames.
- **En Runway/Veo:** Añade `cinematic lighting, three-point lighting system` al inicio del prompt para anclar el estilo.

## Errores comunes que evita o menciona
- **Iluminación plana (flat lighting):** Ocurre cuando Fill Light está al mismo nivel que Key. Evitar en prompts: no usar `even lighting` o `flat light` a menos que sea intencional.
- **Sobreexposición en Back Light:** La luz trasera no debe quemar los bordes. En prompts: `subtle rim light, not overexposed`.
- **Olvidar la dirección de la Key:** Si no se especifica, la IA genera luz frontal genérica. Siempre definir `key light from [dirección]`.
- **Contraste inconsistente en movimiento:** Al cambiar de plano, la relación de luces debe mantenerse. Prompt: `lighting ratio constant across shots`.
- **Sombras duras no deseadas:** Si se busca suavidad, usar `softbox`, `diffused key light`, `large light source`.