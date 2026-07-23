# Lighting 101: Intro to Light Placement
**Fuente:** aputure | https://youtu.be/nqMQZG68Wkc

## Que ensena (2-3 lineas)
Fundamentos del esquema de iluminación de tres puntos (key light, fill light, backlight) como lenguaje estándar en cine. Explica cómo la posición y potencia de cada luz transforma un plano amateur en uno cinematográfico, y cómo variar o eliminar luces genera estilos como low-key o high-key lighting.

## Lecciones accionables
- **Key light:** luz principal, la más brillante. Colocación clásica a 45° arriba y lateral al sujeto → crea el triángulo de luz en la mejilla opuesta (Rembrandt light). En prompts: `key light from 45-degree angle`, `Rembrandt lighting`.
- **Fill light:** lado opuesto al key light, rellena sombras sin aplanar el rostro. Se atenúa o se reemplaza con reflector. En prompts: `fill light at 1/2 intensity`, `subtle fill from reflector`.
- **Backlight:** detrás del sujeto, separa del fondo. Tres variantes:
  - Backlight estándar: 45° detrás, ilumina hombros y nuca.
  - Hair light: directamente detrás, crea halo en cabello.
  - Rim light: muy lateral, ilumina mentón y mandíbula.
- **Combinaciones clave:**
  - Sin fill light → low-key lighting (sombras duras, dramático).
  - Key + fill intensos → high-key lighting (rostro muy iluminado, suave).
  - Key frontal + backlight → plano plano pero con separación de fondo.
  - Key lateral + sin fill + backlight → look cinematográfico con profundidad.
- **Movimiento de cámara sugerido:** lento travelling lateral o dolly in para revelar el modelado de luces. Focal recomendada: 50mm-85mm para retrato, 35mm para plano más abierto.

## Reglas para el director de fotografia IA
- **Usa `Rembrandt lighting` en el prompt** cuando quieras el triángulo de luz clásico en el rostro; los modelos de video IA lo reconocen como señal de iluminación cinematográfica.
- **Para evitar que el sujeto se fusione con el fondo**, incluye siempre `backlight` o `rim light` en el prompt. Sin separación, el video IA tiende a perder contorno.
- **Especifica `low-key lighting`** cuando quieras sombras marcadas y atmósfera dramática; **`high-key lighting`** para escenas limpias, comerciales o de día.
- **Si usas fill light, indica su intensidad relativa** (ej. `fill light at 30% intensity`) para que la IA no lo iguale al key light y aplane la imagen.
- **Para no alucinar en video IA**, evita prompts con luces contradictorias (ej. `key light from left` + `fill light from left`). La IA puede generar sombras imposibles o artefactos.
- **Incluye `volumetric lighting` o `soft shadows`** si buscas transiciones suaves; la IA tiende a hard cut de luz si no se especifica.

## Errores comunes que evita o menciona
- **Poner el fill light al mismo nivel que el key light** → rostro aplanado, sin dimensión. El video IA lo interpreta como iluminación plana de estudio.
- **No usar backlight** → sujeto se mezcla con el fondo, pierde profundidad. En IA, el personaje parece recortado.
- **Colocar el key light frontal** → look amateur, sin sombras ni textura. Solo funciona para high-key o planos de belleza.
- **Ignorar la relación de luces** (key más brillante que fill) → la IA puede generar sombras inconsistentes o iluminación irreal.
- **Usar solo un punto de luz sin intención** → el video IA tiende a generar sombras duras y planas, sin control sobre la atmósfera.