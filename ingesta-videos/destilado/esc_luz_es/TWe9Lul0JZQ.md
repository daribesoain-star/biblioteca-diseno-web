# Cinematografía | ILUMINACIÓN en el CINE 💡​.
**Fuente:** esc_luz_es | https://youtu.be/TWe9Lul0JZQ

## Que ensena (2-3 lineas)
La iluminación es el elemento narrativo más esencial del cine: sin luz no hay imagen. El video desglosa cinco objetivos clave de la iluminación (dirigir la mirada, establecer atmósfera, crear profundidad, revelar personalidad del personaje y generar volumen) usando ejemplos de Vermeer, Ridley Scott, Blade Runner y El Padrino. Enfatiza que la luz no solo ilumina, sino que cuenta la historia y guía emocionalmente al espectador.

## Lecciones accionables

**1. Dirigir la mirada del espectador (atención focal)**
- Usa **key light** con mayor intensidad en el rostro del personaje; el elemento más brillante atrae la mirada primero.
- Aplica **vignette** (oscurecimiento periférico) para eliminar distracciones en zonas no relevantes.
- Emplea **silhouette** y alto contraste para aislar al sujeto del fondo.
- *Prompt técnico:* `"high contrast, subject illuminated by a single key light, vignette effect, dark background, viewer's eye drawn to face"`

**2. Crear atmósfera y estado de ánimo**
- **Hard lighting** (luz dura, sombras marcadas) → drama, suspenso, terror. *Prompt:* `"hard lighting, harsh shadows, dramatic mood, suspense atmosphere"`
- **Diffused lighting** (luz difusa, sombras suaves) → escenas calmadas, románticas, íntimas. *Prompt:* `"soft diffused lighting, gentle shadows, calm serene mood"`
- **Color temperature** controla la emoción: neón frío en Blade Runner (futurista, distópico); tonos cálidos para nostalgia o seguridad.

**3. Crear profundidad (tres planos)**
- Ilumina **foreground** (primer plano) con luz brillante y saturada.
- Deja **midground** (segundo plano) en sombra o semisombra para separar.
- **Background** (fondo) debe ser más desaturado, con colores fríos y menor contraste (efecto de profundidad atmosférica).
- *Prompt:* `"three-plane depth: bright foreground subject, shadowed midground, desaturated cool background, atmospheric perspective"`

**4. Revelar personalidad y situación del personaje**
- Villanos: **top lighting** desde arriba + **dim frontal light** → misterio, amenaza. *Prompt:* `"top lighting, dim frontal fill, mysterious villain atmosphere, low key lighting"`
- Tensión: **practical light** (luz visible en escena, ej. lámpara) como fuente diegética. *Prompt:* `"practical light source visible in frame, tense mood, chiaroscuro"`

**5. Crear volumen en personajes**
- **Rembrandt lighting**: key light a **45 grados** de la cámara, creando un triángulo de luz en la mejilla sombreada (Rembrandt triangle).
- *Nunca* iluminar desde la cámara (frontal plano) → pierde volumen y textura.
- *Prompt:* `"Rembrandt lighting, 45-degree key light, triangle highlight on shadow cheek, volumetric face, dramatic depth"`

## Reglas para el director de fotografia IA

- **Usa "key light" + "fill light" + "backlight"** siempre en prompts para definir la tridimensionalidad del sujeto.
- **Para no alucinar en video IA**: especifica la dirección de la luz explícitamente: `"light from camera left at 45 degrees"`, `"top-down light source"`, `"practical lamp light illuminating face from below"`.
- **Cuando quieras atmósfera dramática**, fuerza `"low key lighting, high contrast, hard shadows"`; para escenas suaves, `"high key lighting, soft diffused, no harsh shadows"`.
- **Para profundidad en video IA**, usa `"atmospheric perspective, foreground bright, background desaturated, midground in shadow"` — esto evita que la IA aplaste los planos.
- **Para Rembrandt lighting**, incluye `"Rembrandt triangle on face, 45-degree key light, shadow side of face"` — sin esto, la IA tiende a iluminar frontalmente.
- **Evita prompts genéricos como "nice lighting"**; sé específico: `"single hard light source from above, rim light on hair, dark background"`.

## Errores comunes que evita o menciona

- **Iluminar desde la cámara o frontalmente**: elimina volumen, aplana al personaje, lo hace parecer "pegado" al fondo. En video IA, esto produce rostros sin relieve y fondos planos.
- **No definir los tres planos (foreground, midground, background)**: la IA mezcla todo en un solo plano visual, perdiendo profundidad narrativa.
- **Usar luz dura en escenas que requieren calma**: el espectador percibe tensión aunque la historia no lo pida. En prompts, no mezcles `"hard lighting"` con `"peaceful mood"`.
- **Ignorar la dirección de la luz**: la IA alucina sombras inconsistentes si no especificas origen. Siempre añade `"light source from [dirección]"`.
- **Sobresaturar colores en fondos lejanos**: en profundidad atmosférica, los fondos deben ser desaturados; la IA tiende a saturar todo si no se lo ordenas.