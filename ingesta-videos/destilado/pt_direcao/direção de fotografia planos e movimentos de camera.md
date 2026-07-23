# direção de fotografia planos e movimentos de camera
**Fuente:** pt_direcao | https://youtu.be/direção de fotografia planos e movimentos de camera

## Que ensena (2-3 lineas)
Enseña a diseñar una iluminación cinematográfica con recursos limitados, usando técnica **short lighting** para drama, combinación de luces cálidas (3200K) y frías (geles azules), y cómo ocultar fuentes de luz dentro del set para lograr atmósferas controladas. También cubre el uso de dimmers para simular luz de TV y crear transiciones tonales.

## Lecciones accionables

### Técnicas de iluminación para prompts de video IA
- **Short lighting**: Ilumina un lado del rostro y filma desde el lado en sombra. En prompt: `"short lighting, dramatic side shadow on face, key light from camera-left, camera positioned on shadow side"`
- **Backlight con recorte**: Coloca un foco detrás del sujeto, diagonal superior, para crear un cutout en el hombro. Prompt: `"rim light from behind, diagonal top-down, hard edge light separating subject from background"`
- **Luz de relleno desde el techo**: Softbox 650W colgado con barracuda para iluminación general. Prompt: `"overhead softbox fill light, 650W with diffusion, even ambient illumination"`
- **Luz de TV simulada**: Foco frontal con dimmer modulado. Prompt: `"flickering TV light source, dimmer modulation, blueish glow on face, 1-2 Hz pulse"`
- **Gel amarillo dorado en contraluz**: Para silueta y atmósfera. Prompt: `"golden yellow gel backlight, hard edge rim, warm amber tone, 3200K base"`
- **Gel azul en fondo**: Contraste con personajes cálidos. Prompt: `"blue gel on background tree, 2000W spotlight, cool cyan contrast against warm foreground"`
- **Luz elipsoidal desde ventana**: Foco con accesorio concentrador. Prompt: `"ellipsoidal spotlight through window, sharp beam, hard light on tiles, 250W focused"`
- **Luz verde para locura/sueño**: Gel verde + dimmer. Prompt: `"green gel wash, surreal dream sequence, low intensity dimmer, hallucinatory mood"`

### Parámetros técnicos clave
- **Cámara**: BlackMagic 4K (modelo cuadrado)
- **Lentes**: Sigma 18-35mm f/1.8 (para planos generales), Canon 50mm f/1.8 (para close-ups dramáticos)
- **Temperatura de color**: 3200K (tungsteno) en todas las lámparas prácticas
- **Potencia de focos**: 650W con softbox (techo), 2000W con gel azul (exterior), 250W elipsoidal (baño)
- **Dimmers**: Para controlar intensidad y simular efectos (TV, transiciones noche/día)

### Movimientos de cámara para prompts
- **Cámara estática con bloqueo**: Para escenas dramáticas, usar `"locked-off camera, static frame, no camera movement"`
- **Cámara en mano suave**: Para momentos de locura, `"subtle handheld, slight micro-jitters, intimate documentary feel"`
- **Cortinilla de cuentas**: Elemento en primer plano que añade movimiento. Prompt: `"beaded curtain in foreground, shallow depth of field, beads catching rim light"`

## Reglas para el director de fotografia IA

- **Usa short lighting** cuando el personaje esté en conflicto interno o escena dramática; ilumina un lado, filma desde el opuesto.
- **Usa luz de techo con softbox** cuando el set sea pequeño y necesites libertad de movimiento de cámara; evita reubicar focos constantemente.
- **Usa geles de color** para separar planos: gel amarillo/dorado en contraluz para personajes, gel azul/verde en fondo para contraste.
- **Para no alucinar en video IA**: especifica siempre la dirección de la luz (`key light from camera-left`, `rim light from behind`), la temperatura (`3200K warm`, `5600K cool`) y la dureza (`hard light`, `softbox diffusion`).
- **Usa dimmers** para simular fuentes prácticas (TV, lámparas) y evitar que el IA genere parpadeos no deseados; especifica `"flicker rate 1-2 Hz"` si es intencional.
- **Oculta las fuentes de luz** dentro del set (tras cortinas, dentro de lámparas) para que parezcan prácticas; en prompt: `"practical lamp as key light source, hidden LED strip behind curtain"`
- **Ilumina el fondo** (árboles, paredes) para evitar negro total; usa `"background tree lit with blue gel, 2000W spotlight, creating depth"`

## Errores comunes que evita o menciona

- **No usar lámparas prácticas sin dimmer**: Si están a máxima potencia, el sensor de la cámara las quema (blown out). Usa dimmer para bajar intensidad.
- **No asumir que un gel no reduce potencia**: Cualquier gel frente a un reflector corta al menos la mitad de la luz. Usa focos más potentes cuando uses geles.
- **No subestimar la longitud de cables**: Para sets grandes, necesitas hasta 200 metros de extensiones. Planifica con el gaffer.
- **No filmar en sets complejos (subway, helicópteros)**: Simplifica locaciones para aumentar creatividad y control de iluminación.
- **No usar solo luz frontal**: Crea drama con luz lateral o contraluz; evita iluminación plana tipo entrevista.
- **No olvidar el reflector de relleno**: Para compensar sombras duras en un lado del rostro cuando la luz principal es muy direccional.