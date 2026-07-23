# 20X Faster Rendering in Cycles (Blender Render Guide)
**Fuente:** Kaizen | https://youtu.be/pkICXEWc1kM

## Qué enseña (2-3 líneas)
Este tutorial enseña a optimizar escenas y ajustar configuraciones de Cycles para acelerar drásticamente los renders, desde la reducción de geometría innecesaria hasta el uso de denoising avanzado. Cubre técnicas como instancias, simplificación, culling, ajuste de samples, noise threshold, light paths y denoising con OpenImageDenoise en el compositor.

## Técnicas accionables
- **Instancias de colección:** Reemplaza objetos duplicados idénticos con instancias usando **Shift+A → Collection Instance** para evitar que Blender cargue datos duplicados.
- **Simplify (Render Settings):** Actívalo en **Render Properties → Simplify**. Reduce **Max Subdivision** a **2 o 3** (viewport y render) y ajusta **Texture Limit** (ej. 1024) para bajar resolución de texturas globalmente.
- **Camera Culling:** En **Object Properties → Visibility**, mantén presionado **Alt** y haz clic en **Use Camera Cull** en cada objeto fuera de cámara. Solo funciona en **Rendered View**.
- **Noise Threshold:** En **Render Properties → Sampling**, usa **0.03** como valor por defecto; sube a **0.1** en escenas simples. Valores más altos = renders más rápidos y ruidosos.
- **Max Samples:** Baja a **1000** o **2000** en lugar de 4096; el denoising compensa la calidad.
- **Min Samples:** Sube a **20** para que todas las partes de la imagen reciban muestras mínimas.
- **Light Tree:** En **Render Properties → Light Paths**, desactívalo si la escena tiene **menos de 10 luces**; actívalo para docenas/cientos de luces.
- **Animated Noise Seed:** En **Render Properties → Advanced**, actívalo para que el patrón de ruido varíe por frame y mejore el denoising en animaciones.
- **Light Paths (Max Bounces):** En **Render Properties → Light Paths**, pon todos los bounces (Diffuse, Glossy, Transmission, Volume) a **1** en vista render con denoising de viewport activado. Aumenta cada uno individualmente hasta que no veas cambios. Luego suma los valores para **Total**.
- **Persistent Data:** En **Render Properties → Performance**, actívalo para que Blender almacene datos de frame en RAM (BVH, importance map). Solo funciona tras renderizar la escena al menos una vez.
- **Denoising en Compositor:** En **View Layer Properties → Passes**, activa **Denoising Data**. En el Compositor, añade nodo **Denoise** (OpenImageDenoise), pon **Quality: High** y **Accurate**. Conecta los sockets **Image**, **Albedo** y **Normal**. Activa **HDR** si trabajas con imágenes HDR.
- **Compositor GPU:** En **Render Properties → Performance → Compositor**, selecciona **GPU** si tienes una GPU rápida.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **instancias de colección** cuando tengas objetos idénticos duplicados en la escena.
- Usa **Simplify** con **Max Subdivision bajo** cuando tengas objetos con Subdivision Surface modifier que no necesitan alta densidad.
- Usa **Camera Culling** en objetos fuera del encuadre que no aparecen en reflejos ni sombras visibles.
- Usa **Noise Threshold 0.03** como punto de partida; súbelo a **0.1** en escenas con poca translucencia/transparencia.
- Usa **Min Samples 20** cuando bajes Max Samples y Noise Threshold para evitar píxeles sin muestras.
- Usa **Light Tree desactivado** cuando tengas menos de 10 luces; actívalo para escenas con muchas luces (ej. árbol de navidad).
- Usa **Animated Noise Seed** en animaciones para que el ruido sea natural y el denoising sea más consistente.
- Usa **Persistent Data** solo para animaciones (no para frames individuales), y solo tras haber renderizado la escena una vez.
- Usa **Denoising en Compositor** en lugar del checkbox simple para tener control sobre albedo, normal y HDR.
- Usa **resolución 1080p** para proyectos web/redes; **1440p** para calidad media; **4K** solo si el destino final lo requiere (TV, cine).

## Errores comunes / gotchas
- **No verificar GPU habilitada:** Asegúrate de que en **Edit → Preferences → System** tengas seleccionada tu GPU y en **Render Properties → Device** esté en **GPU Compute**.
- **Usar Simplify sin verificar calidad:** Si tienes objetos reflectantes o el HDRI es visible en el fondo, bajar Texture Limit puede perder detalle visible. Siempre rerenderiza para comprobar.
- **Camera Culling no funciona en Solid View:** Solo se activa en **Rendered View**; en Solid View los objetos culled siguen visibles.
- **Persistent Data no acelera el primer frame:** Necesita renderizar la escena una vez para almacenar datos en RAM; en frames siguientes sí acelera.
- **Denoising con samples muy bajos o noise threshold muy alto:** El denoiser puede generar artefactos (manchas) si tiene demasiado ruido que adivinar. Ajusta samples y threshold para darle suficiente información.
- **Light Paths con todos los bounces a 1:** Puede dejar la imagen muy oscura o plana; aumenta cada bounce individualmente hasta que el viewport deje de mostrar cambios.
- **Tiles (Performance):** Cambiar el tamaño de tiles (ej. 128) puede ralentizar renders drásticamente; es mejor dejarlo en **2048** por defecto.
- **Noise Threshold en escenas con transparencia/translucencia:** Necesita valores más bajos (ej. 0.03) porque estos materiales generan más ruido.