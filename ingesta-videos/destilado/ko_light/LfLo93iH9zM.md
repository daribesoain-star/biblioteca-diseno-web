# 오로라 스튜디오 조명강좌 1편 - 스튜디오 조명 설치하기
**Fuente:** ko_light | https://youtu.be/LfLo93iH9zM

## Que ensena (2-3 lineas)
Montaje y configuración profesional de un kit de iluminación de estudio (Aurora Orion 400W), desde el ensamblaje del trípode y softbox hasta el uso de funciones clave como sincronización, modelado de luz y control de potencia digital. Explica la diferencia entre difusores con y sin recubrimiento UV y cómo afectan la temperatura de color.

## Lecciones accionables

### Montaje del trípode (C-Stand / Light Stand)
- **Apertura de patas:** Desplegar hasta que la barra auxiliar quede **nivelada** (horizontal). No elevar las patas por encima de la horizontal: el centro de gravedad sube y el soporte puede volcarse.
- **Columna central:** Extender en 3 etapas. Modelos con **air cushion system** (amortiguación neumática) evitan caídas bruscas del cabezal.
- **Fijación del cabezal:** Apretar firmemente el acople inferior. El Orion usa el mismo mount que luces de gama alta (estandarizado).

### Instalación del softbox
- **Speed ring:** Identificar los agujeros R1, R2, R3, R4 según el tipo de softbox (rectangular vs strip). Insertar las varillas (ribs) en los agujeros correspondientes.
- **Difusor interior (reflective/diffuse fabric):** Fijar con broches (snap fasteners) y bandas elásticas en las esquinas. Tiempo estimado: 5 segundos.
- **Difusor exterior:** Cubrir como un bolsillo, estirar y fijar con velcro en los bordes para evitar fugas de luz.
- **UV coating:** Los softboxes Aurora incluyen una bolsa negra con tela tratada contra UV. La tela sin coating tiene un tono azulado/fluorescente; la tratada es blanco puro (temperatura de color correcta).

### Conexión eléctrica y funciones del panel trasero
- **Regla de encendido:** Conectar el cable de poder **siempre con el switch apagado**. Encender después. Si se conecta con el switch encendido, el fusible puede saltar.
- **Botón Sync (ojo):** Activa la sincronización inalámbrica entre luces. Si está ON, al disparar una luz, todas las conectadas explotan simultáneamente.
- **Botón de sonido (nota musical) + modelado:**
  - **Modo silencioso:** Al disparar, la luz de modelado se apaga y enciende automáticamente. Recomendado para evitar mezcla de color entre el flash (xenon) y la luz continua (modeling lamp).
  - **Modo con sonido:** La luz de modelado **no se apaga** al disparar. Útil para sesiones con niños o guías complejas donde no se quiere oscuridad momentánea.
- **Control de potencia digital:** Botones Up/Down. Al bajar la potencia, la luz hace un "pop" automático para descargar el capacitor y luego recargar al nivel seleccionado. El display digital permite precisión (ej: 400W vs 200W).
- **Test button:** Dispara el flash manualmente.
- **PC Sync cable (3.5mm mono jack):** Conectar a la cámara en el contacto Sync (FP x). **No recomendado** por el riesgo de enredos. Preferir disparador inalámbrico (transmisor + receptor).

### Prompts VERBATIM (si aparecen)
No hay prompts de video IA en la transcripción. Sin embargo, se extraen parámetros técnicos para prompts:

**Parámetros para prompts de cámara/video IA:**
- `lighting: studio strobe, 400W key light`
- `lighting: softbox rectangular, UV-coated diffusion`
- `lighting: modeling lamp on/off, mixed flash + continuous`
- `camera: sync cable, PC sync port, wireless trigger`
- `lens: no especifica focal, pero se infiere uso de 50mm-85mm para retrato`
- `movement: no hay movimiento de cámara en el tutorial`

## Reglas para el director de fotografia IA

1. **Usa softbox con difusor UV-coated cuando necesites temperatura de color neutra (5600K).** Si usas difusor sin coating, el color se desplazará a azul/fluorescente.
2. **Para no alucinar en video IA, especifica siempre el tipo de luz:** `studio strobe` vs `continuous light`. No mezcles ambos en un mismo prompt a menos que busques un efecto específico de color blending.
3. **Cuando uses flash de estudio en video IA, activa el modo de modelado OFF al disparar** para evitar contaminación cromática entre el destello (xenon) y la luz continua (modeling lamp).
4. **Para estabilidad en tomas con trípode, asegura que las patas estén niveladas (horizontal).** Si el prompt incluye `low angle` o `high angle`, especifica `tripod legs fully spread, center column low` para evitar vuelcos.
5. **Usa potencia digital precisa en prompts:** `flash power: 400W` o `flash power: 200W`. No uses términos vagos como "full power" a menos que sea intencional.
6. **Para sincronización en video IA, prefiere disparo inalámbrico sobre cableado.** El cable sync puede generar artefactos de movimiento no deseados si el modelo de IA interpreta el cable como parte de la escena.

## Errores comunes que evita o menciona

- **No elevar las patas del trípode por encima de la horizontal:** El centro de gravedad sube y la luz puede volcarse, causando accidentes graves.
- **No tocar el bulbo (krypton lamp) con las manos desnudas:** La grasa y sudor de la piel se transfieren al vidrio; al calentarse, la expansión diferencial puede romperlo. Usar un paño o guantes.
- **No conectar el cable de poder con el switch encendido:** Puede dañar el fusible.
- **No usar sync cable en sesiones dinámicas:** Se enreda, estorba y puede desconectarse. Preferir disparador inalámbrico.
- **No usar difusor sin UV coating si se busca color preciso:** El tono azulado/fluorescente altera la temperatura de color.
- **No bajar la potencia sin esperar el "pop" de descarga:** El capacitor se descarga automáticamente; si se ignora, la luz puede no disparar a la potencia correcta.