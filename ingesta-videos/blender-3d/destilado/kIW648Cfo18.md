# 10 Easy Ways to Render Faster in Blender
**Fuente:** Blender Guru | https://youtu.be/kIW648Cfo18

## Qué enseña (2-3 líneas)
Diez técnicas prácticas para acelerar renders en Cycles, desde ajustes de escena y materiales hasta configuración del motor de render. Cubre instanciación, culling, simplificación de geometría y texturas, y optimización de samples y luz.

## Técnicas accionables
- **Instancing con Alt+D:** En lugar de Shift+D (duplicar), presiona **Alt+D** para crear instancias que comparten datos de malla. En renders con miles de copias, Blender solo carga el objeto original una vez, reduciendo el tiempo hasta 95%.
- **Camera Culling:** En *Render Properties > Simplify*, activa **Camera Culling**. Luego selecciona todos los objetos, ve a *Object Properties > Ray Visibility*, mantén presionado **Alt** y activa **Use Camera Culling** para aplicar a todos. Oculta todo lo fuera del encuadre, reduciendo el tiempo hasta 30%.
- **Indirect Light Clamping:** En *Render Properties > Light Paths > Clamping*, reduce **Indirect Light Clamping** a un valor bajo (ej. 1-3). Limita el brillo máximo de los rebotes, eliminando fireflies en vidrios/líquidos. Menos preciso pero acelera significativamente.
- **Simplificar vidrio:** Para ventanas o vidrios finos, selecciona el objeto, ve a *Object Properties > Ray Visibility* y desmarca **Shadow**. Elimina el cálculo de cáusticas innecesarias; en escenas con vidrio plano reduce el tiempo hasta 66%.
- **Persistent Data:** En *Render Properties > Performance > Final Render*, activa **Persistent Data**. Almacena BVH, shaders y geometría en memoria para reutilizar entre fotogramas de animaciones. Evita recargar todo en cada frame.
- **Noise Threshold:** En *Render Properties > Sampling > Noise Threshold*, cambia el valor predeterminado de **0.01** a **0.03**. Detiene el render por áreas cuando alcanzan el umbral, ahorrando hasta 64% de tiempo con diferencia imperceptible.
- **Texturas 4K en lugar de 8K:** Usa el add-on **Polygon** y en sus preferencias fija **Default Texture Size** a **4K**. Si ya tienes texturas grandes, en *Render Properties > Simplify* activa **Texture Limit** (ej. 4096x4096) para reducirlas automáticamente al renderizar.
- **Fast GI Approximation:** En *Render Properties > Light Paths > Fast GI Approximation*, actívalo y ajusta el número de bounces (ej. **2**). Después de esos bounces, Cycles cambia a una aproximación basada en ambient occlusion. Con 2 bounces es 23% más rápido; con 1 bounce es 77% más rápido pero más notorio.
- **GPU rendering:** En *Edit > Preferences > System*, selecciona **OptiX** (Nvidia), **HIP** (AMD) o **Metal** (Mac). No combines CPU+GPU si la CPU es más lenta; puede ser hasta 6% más lento. También activa GPU para **Denoising** y **Compositor** en la misma sección.
- **Decimate Modifier:** Agrega el modificador **Decimate** a objetos con geometría densa. Ajusta **Ratio** a **0.1** (reduce 90% de polígonos). Renderiza 60% más rápido sin pérdida de calidad visible. En objetos curvos brillantes, aplica **Auto Smooth** después (en *Object Data Properties > Normals > Auto Smooth*) para evitar artefactos.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Alt+D** en lugar de Shift+D cuando necesites múltiples copias de un objeto en la escena, especialmente si son cientos o miles.
- Activa **Camera Culling** en escenas grandes con muchos objetos fuera del encuadre; no lo uses si necesitas reflejos precisos de objetos fuera de cámara.
- Reduce **Indirect Light Clamping** solo cuando tengas fireflies en vidrios o líquidos; no lo uses en escenas sin estos elementos.
- Desmarca **Shadow** en *Ray Visibility* únicamente para vidrios planos (ventanas); no lo hagas en vidrios gruesos o lentes donde las cáusticas son importantes.
- Activa **Persistent Data** exclusivamente para animaciones o renders por lotes; en renders de un solo frame no aporta beneficio.
- Ajusta **Noise Threshold** a **0.03** como valor general; no subas más de 0.05 en animaciones para evitar sombras irregulares.
- Descarga texturas en **4K** por defecto; reserva 8K solo para primeros planos extremos donde la cámara esté a centímetros de la superficie.
- Activa **Fast GI Approximation** con **2 bounces** para escenas interiores con iluminación indirecta; usa 1 bounce solo si la calidad no es crítica.
- Selecciona **GPU** como dispositivo de render si tu GPU es más moderna que tu CPU; no actives ambos a menos que hayas verificado que no ralentiza.
- Aplica **Decimate** con ratio **0.1** a modelos descargados de internet con geometría excesiva; complementa con **Auto Smooth** si el objeto tiene superficies curvas reflectantes.

## Errores comunes / gotchas
- Usar **Shift+D** para duplicar objetos en masa: cada copia se carga individualmente en memoria, multiplicando el tiempo de render. Siempre prefiere **Alt+D** para instancias.
- Activar **Camera Culling** sin seleccionar todos los objetos primero: solo se aplica al objeto activo. Mantén **Alt** al activar la opción para aplicar a toda la selección.
- Dejar **Indirect Light Clamping** en 0: no elimina fireflies. Un valor muy bajo (ej. 0.1) puede oscurecer la escena; ajusta progresivamente.
- Desmarcar **Shadow** en vidrios gruesos: elimina sombras realistas y cáusticas necesarias para el realismo. Solo aplica a vidrios planos de ventanas.
- Olvidar activar **Persistent Data** en animaciones: Blender reconstruye BVH y compila shaders en cada frame, duplicando el tiempo total.
- Mantener **Noise Threshold** en 0.01: es tan bajo que rara vez se alcanza antes del máximo de samples, anulando su efecto. Subirlo a 0.03 es seguro y efectivo.
- Descargar texturas en 8K por defecto: duplica el tiempo de carga en VRAM sin mejora visible en la mayoría de planos. Usa 4K como estándar.
- Activar **Fast GI Approximation** con 0 bounces: elimina toda la iluminación indirecta, resultando en renders planos y poco realistas.
- Activar CPU+GPU sin verificar: si la CPU es más lenta, el render se ralentiza porque espera al dispositivo más lento. Haz una prueba comparativa.
- Aplicar **Decimate** con ratio muy bajo (ej. 0.01) en objetos curvos: genera artefactos visibles en reflejos. Usa **Auto Smooth** después para mitigar, o mejor, retopología manual.