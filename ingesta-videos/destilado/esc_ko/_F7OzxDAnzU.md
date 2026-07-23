# 로그 촬영하는 이유 | 가장 쉬운 컬러그레이딩 방법 | 색보정 LUT 적용
**Fuente:** esc_ko | https://youtu.be/_F7OzxDAnzU

## Qué enseña (2-3 líneas)
El video explica por qué se graba en perfil LOG (para maximizar rango dinámico en condiciones de alto contraste) y cómo aplicar color grading simple usando LUTs de fábrica y de terceros. Muestra el flujo completo: corrección base (Beige Collection / LUT de fábrica) + Look creativo (LUT de estilo) en Premiere Pro.

## Lecciones accionables

### 1. Por qué grabar en LOG
- **Propósito:** Obtener el máximo rango dinámico posible dentro de una profundidad de bits limitada.
- **Ventaja clave:** Preserva detalles en altas luces (cielo) y sombras (persona) simultáneamente, especialmente en contraluz.
- **Desventaja:** El metraje LOG se ve desaturado, plano y con baja saturación (apariencia "hazy").

### 2. Flujo de color grading para LOG (2 pasos obligatorios)
**Paso 1: Corrección base (Beige Collection / LUT de fábrica)**
- Restaura brillo, contraste y saturación a valores "normales".
- **No aplicar LUTs creativos sin antes hacer este paso** → el resultado se verá deslavado.
- **LUTs de fábrica recomendados por marca:**
  - Canon: C-Log → BT.709
  - Sony: S-Log (NET) → BT.709
  - Panasonic: V-Log → BT.709
- **Dónde descargarlos:** Sitios web oficiales de cada fabricante (gratis).
- **Formato de archivo:** `.cube` (también 3D LUT).

**Paso 2: Look creativo (LUT de estilo)**
- Aplica en la pestaña **Creative** del panel Lumetri Color.
- Ajusta la **intensidad** (opacidad) del LUT para controlar el efecto.
- **Regla de selección de LUT:** Elige LUTs cuyos videos de muestra coincidan con tu entorno de grabación (bosque, mar, estudio, etc.). Si aplicas un LUT de mar a un video de estudio, el resultado será decepcionante.

### 3. Parámetros técnicos para prompts de video IA
- **Perfil de cámara:** `LOG profile`, `flat color profile`, `low contrast`, `low saturation`
- **Rango dinámico:** `high dynamic range`, `wide dynamic range`, `preserve highlights and shadows`
- **Condición de luz:** `backlit scene`, `high contrast lighting`, `sunny outdoor`
- **Movimiento de cámara:** `static shot` (para aplicar LUTs), `slow pan`, `tripod`
- **Focales:** `35mm`, `50mm`, `wide angle` (para escenas de contraluz)
- **Look final deseado:** `cinematic`, `film look`, `warm tone`, `vintage`, `blockbuster`, `teal and orange`

### 4. Prompts VERBATIM (traducidos y adaptados)
- *"Log footage, flat color profile, low contrast, low saturation, high dynamic range, backlit scene, 35mm, static shot"*
- *"Cinematic color grade, teal and orange look, warm tone, film grain, vintage feel, blockbuster style"*
- *"Beige collection applied, BT.709 conversion, restored contrast and saturation"*

## Reglas para el director de fotografía IA

1. **Usa LOG profile en prompts cuando la escena tenga alto contraste** (contraluz, sol directo, ventanas brillantes). Esto le indica al modelo que debe preservar detalles en luces y sombras.

2. **Para no alucinar en video IA, especifica primero el perfil plano y luego el look final** en dos pasos separados. Ejemplo: *"Log footage, flat color, low saturation"* → luego *"cinematic color grade, warm tone, film look"*.

3. **Usa términos de cámara en inglés** en los prompts: `log profile`, `flat gamma`, `low contrast`, `wide dynamic range`, `BT.709 conversion`.

4. **Cuando quieras un look específico, menciona el nombre del LUT o estilo** (ej: `blockbuster`, `teal and orange`, `vintage film`, `warm bright`).

5. **Ajusta la intensidad del look** en el prompt: *"subtle film look, intensity 30%"* o *"strong cinematic grade, intensity 80%"*.

6. **Para escenas nocturnas o con poca luz**, usa `low light log footage`, `underexposed`, `shadow detail preserved`.

## Errores comunes que evita o menciona

- **Aplicar LUT creativo sin corrección base primero** → el video se ve deslavado, sin contraste, colores extraños.
- **Usar un LUT de un entorno diferente al de tu metraje** (ej: LUT de mar en video de estudio) → resultados insatisfactorios.
- **No descargar LUTs de fábrica** → la corrección manual es difícil y tediosa para principiantes.
- **Sobresaturar o subir demasiado la intensidad del LUT** → pierde naturalidad, se ve artificial.
- **Ignorar el formato de archivo** → los LUTs vienen en `.cube` o `.3dl`; asegúrate de que Premiere Pro los reconozca.
- **No revisar los videos de muestra** antes de descargar un LUT → riesgo de que no se adapte a tu escena.