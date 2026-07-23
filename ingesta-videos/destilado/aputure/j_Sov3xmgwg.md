# Filmmaking 101 - Three Point Lighting Tutorial
**Fuente:** aputure | https://youtu.be/j_Sov3xmgwg

## Que ensena (2-3 lineas)
Fundamentos del esquema de iluminación de tres puntos (key light, fill light, hair light) para cine y video. Explica cómo cada luz cumple una función específica: modelar al sujeto, rellenar sombras y separarlo del fondo. Enfatiza que el hair light es el elemento que transforma una imagen plana en una imagen cinematográfica.

## Lecciones accionables

- **Key light:** La luz principal y más intensa sobre el sujeto. No es una marca específica, es la luz dominante. Colocarla directamente al lado del sujeto genera sombras dramáticas (look de cine negro). Para prompts: `key light from camera left, hard shadows on face, dramatic mood`.

- **Fill light:** Luz de relleno para suavizar sombras del key light. Se coloca al lado opuesto del key light, a mayor distancia para reducir intensidad (sin dimmers, se aleja la fuente). Relación de distancia: si el fill está al doble de distancia que el key, recibe 1/4 de la intensidad. Para prompts: `soft fill light from camera right, 2:1 key-to-fill ratio, even skin tones`.

- **Hair light (rim light):** Luz trasera que ilumina el borde del sujeto (cabello, hombros). Su función es separar al sujeto del fondo y hacerlo "pop". Sin difusor, luz dura. Peligro: no apuntar directo a la lente para evitar flare no deseado. Para prompts: `hard rim light from behind subject, 45-degree angle, edge separation, cinematic pop`.

- **Ajuste de intensidad sin dimmers:** Mover la luz más lejos del sujeto reduce la intensidad. La intensidad sigue la ley del cuadrado inverso (distancia al doble = 1/4 de luz).

- **Iluminación de fondo (background lights):** Usar luces suaves (Kino Flo Diva o equivalentes) a 45° desde ambos lados, con barn doors para evitar spill sobre el sujeto. Para prompts: `soft background lights at 45 degrees, even illumination on backdrop, flagged to avoid subject spill`.

- **Configuración de cámara mencionada:** F/4.5, ISO 1250 para look dreamy con solo hair light y luz ambiental. Para prompts: `aperture f/4.5, ISO 1250, shallow depth of field, dreamy atmosphere`.

- **Movimiento de cámara:** No se menciona movimiento específico. El tutorial es estático, centrado en iluminación.

## Reglas para el director de fotografia IA

- **Usa hair light siempre que quieras un look cinematográfico:** Incluso sin key ni fill, un hair light solo transforma una imagen plana en una con profundidad y separación. En prompts: `rim light on subject, edge highlight, cinematic separation from background`.

- **Para no alucinar en video IA, especifica la relación de intensidad entre key y fill:** Si no defines la distancia o intensidad relativa, la IA puede generar sombras irrealmente duras o planas. Usa `key light stronger than fill, 2:1 ratio` o `fill light at half intensity of key`.

- **Controla el flare del hair light en prompts:** Si el hair light apunta a cámara, especifica `lens flare, cinematic` o `no lens flare, hair light flagged off lens`. La IA tiende a generar flare no deseado si no se explicita.

- **Usa barn doors o flags en prompts de iluminación de fondo:** Para evitar que la luz de fondo contamine al sujeto, añade `background lights flagged, no spill on subject`.

- **Para looks dramáticos, usa solo key light sin fill:** `single key light, hard shadows, noir style, high contrast`. Para looks comerciales o de entrevista, añade fill: `key light with soft fill, even lighting, flattering`.

## Errores comunes que evita o menciona

- **No usar hair light:** El error más común. Sin hair light, el sujeto se funde con el fondo y la imagen se ve "blah" (plana, no cinematográfica). El hair light es el "secreto" para que parezca cine.

- **Apuntar el hair light directo a la lente:** Causa flare no deseado. A veces el flare es intencional (depende de la historia), pero por defecto hay que evitar que entre en el lente.

- **Spill de luces de fondo sobre el sujeto:** Las luces que iluminan el backdrop no deben contaminar al sujeto. Usar barn doors o flags para cortar la luz exactamente donde termina el fondo.

- **No ajustar la distancia del fill light:** Si no se tiene dimmers, alejar la luz es la única forma de reducir intensidad. Colocar el fill a la misma distancia que el key produce una iluminación plana y sin contraste.

- **Iluminar el fondo de forma desigual:** Luces de fondo a 45° desde ambos lados, con intensidad pareja, para evitar sombras duras o un lado más brillante que el otro.