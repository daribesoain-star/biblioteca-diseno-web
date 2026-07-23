# GOOGLE VEO 3: GUÍA DEFINITIVA Desde Cero para Videos VIRALES y Prompts
**Fuente:** ai_veo | https://youtu.be/oodW_W15rLY

## Que ensena (2-3 lineas)
Guía completa para usar Google Veo 3 desde cero: cómo acceder a la plataforma Flow, estructura de prompts de 8 componentes específicos para Veo 3 (incluyendo diálogo, sonido y música), y cómo generar videos virales en nichos como entrevistas callejeras, vlogs estilo selfie y ASMR. Incluye solución para convertir horizontal a vertical con Runway.

## Lecciones accionables

### Acceso y configuración técnica
- **Plataforma:** Google Labs → Flow (one.google.com para suscripción)
- **Planes:** Google IA Pro (1000 créditos/mes, 20 tokens por generación Fast) / Google IA Ultra (12,500 créditos/mes)
- **Modelos en Flow:** Veo 3 Fast (20 tokens) vs Veo 3 Quality (100 tokens) — usar Fast para pruebas
- **Resolución de descarga:** Original 720p o "tamaño ampliado" 1080p (sin costo extra de créditos)

### Anatomía del prompt para Veo 3 (8 componentes)
1. **Formato al inicio** — condiciona todo el prompt: "estilo entrevista callejera", "video selfie", "escena cinemática realista"
2. **Sujeto/personaje** — siempre mínimo un sujeto (coche, perro, persona)
3. **Acción/verbo** — "está corriendo", "está hablando", "está andando"
4. **Entorno/fondo** — escenario fundamental para contexto
5. **Estilo visual** — "cinematográfico", "animado", look deseado
6. **Perspectiva y movimiento de cámara** — usar términos cinematográficos: dolly shot, paneo, seguimiento
7. **Iluminación y atmósfera** — define emoción: hora dorada, estudio, noche, terror
8. **Sonido y música** — escribir al final: música ambiental + efectos (pasos, puerta, vidrio)
9. **Diálogo y voz** — novedad Veo 3: usar `Dialogue:` (en inglés) sin comillas

### Prompts VERBATIM del video
**Ejemplo cinemático (persecución Matrix):**
- Escena 1: viendo desde afuera
- Escena 2: viendo desde adentro
- Edición: unir ambas para contexto

**Ejemplo entrevista callejera (formato viral):**
- "Señora, ¿es verdad que hubo el objeto en el cielo? Claro que lo vi. Bajaron anoche, me tocaron la puerta, pero les dije que no podía ir porque mañana tengo bingo donde Carmencita."
- "Señor, ¿cuál es su opinión sobre el reciente aumento del caos en la ciudad? Me encanta. Le da a la ciudad un poco de color."

**Ejemplo vlog selfie (Mona Lisa):**
- "¡Uf! No se imaginan el dolor de cara. Llevo como 3 horas con esta sonrisita y Leito todavía no decide si me pone cejas o no. En fin, ¿les gusta mi outfit de hoy? Déjenme un comentario. Chao."

**Ejemplo ASMR:**
- Estilo metálico → sonido a metal; plástico → sonido a plástico

### Movimientos de cámara recomendados
- **Paneo a la izquierda/derecha**
- **Dolly shot** (acercamiento/alejamiento)
- **Seguimiento de cámara** — describir: "la cámara sigue en la mano colocando la taza en la mesa"
- **Combinar movimiento + descripción** para mayor riqueza visual

### Conversión horizontal a vertical
1. Runway → Previous Models → Alfa Turbo
2. Icono "expandir video" → seleccionar video horizontal
3. Elegir formato vertical → generar
4. Descargar

## Reglas para el director de fotografia IA

- **Define el formato al inicio del prompt** — antes de cualquier descripción, condiciona todo: "estilo entrevista callejera", "escena cinemática realista", "video selfie"
- **Piensa como director (Spielberg)** — mientras más describas lo que pasa, más jugoso sale el video: "el actor llora, se coloca las manos en la cabeza, golpea la mesa"
- **Usa `Dialogue:` (en inglés) sin comillas** para diálogos — las comillas generan subtítulos aleatorios desincronizados
- **Elimina apóstrofes y comillas** del prompt en inglés para evitar subtítulos fantasma
- **Combina movimiento de cámara + descripción de acción** — no solo "dolly shot", sino "la cámara sigue en la mano colocando la taza en la mesa"
- **Escribe sonido y música al final del prompt** — música ambiental + efectos específicos (pasos, puerta, vidrio)
- **Para no alucinar en video IA:** da una sola instrucción de diálogo principal — si dices "justo cuando el cirujano está hablando" y también "primero habla la reportera", la IA prioriza la instrucción más descriptiva
- **Estructura diálogos secuencialmente:** explica escena → "primero habla X" → escribe diálogo de X → "luego Y responde" → escribe diálogo de Y → añade sonidos
- **Usa prompts negativos:** "sin subtítulos" para evitar subtítulos aleatorios
- **Para videos con niños o apariencia infantil:** Veo 3 no genera audio por políticas de seguridad — usar solo adultos para diálogos con voz

## Errores comunes que evita o menciona

1. **Subtítulos aleatorios desincronizados** — aparecen cuando usas comillas en los diálogos. Solución: escribir `Dialogue:` sin comillas y eliminar apóstrofes
2. **Diálogo intercambiado entre personajes** — ocurre cuando das dos instrucciones contradictorias sobre quién habla primero. Solución: estructura secuencial clara (primero X, luego Y responde)
3. **Sin audio en personajes infantiles** — Veo 3 no genera audio si el sujeto parece menor de edad. Usar solo adultos para diálogos con voz
4. **Calidad baja por defecto** — descargar en "tamaño ampliado 1080p" (no gasta créditos) para mejor resolución
5. **Marca de agua en descarga** — inevitable por ahora en Veo 3
6. **No permite crear en vertical directamente** — solución: generar en horizontal y convertir con Runway Alfa Turbo (expandir video)
7. **Gasto excesivo de créditos** — usar Veo 3 Fast (20 tokens) en lugar de Quality (100 tokens) para pruebas