# ⛪ WHITE SMOKE ⛪ with DaVinci Resolve
**Fuente:** mundoaudiovisual | https://youtu.be/ek34NL1iVps

## Qué enseña
Simular el efecto de humo blanco o negro saliendo de una chimenea (como en el cónclave papal) usando DaVinci Resolve y Photoshop. Combina edición de imagen en Photoshop con composición en Fusion y efectos en la línea de tiempo de Resolve.

## Lecciones accionables
- **Preparar la chimenea en Photoshop:** Crear un archivo 1920x1080, pegar la imagen de la chimenea del Vaticano, eliminar el humo existente con "relleno generativo" (generative fill). Alternativamente, recortar la chimenea con la pluma (pen tool), crear máscara manual, ajustar color con pincel de cambio de color (color replacement brush) y usar tampón de clonar (clone stamp). Convertir ambas capas en objetos inteligentes (smart objects) y difuminar bordes.
- **Añadir respiraderos en la chimenea:** Usar un pincel negro pequeño (menor a 100px) para pintar agujeros de ventilación de humo en la parte superior de la chimenea.
- **Ajustar exposición:** Aplicar filtro de cámara (Camera Raw Filter, atajo R) al objeto de la chimenea para darle más exposición y que resalte.
- **Crear humo rápido en Fusion (opción compleja):** Añadir un nodo `pEmitter` (emisor de partículas) conectado a un `pRender` (renderizador de partículas). Configurar:
    - `pRender` en modo 2D.
    - En `pEmitter`: aumentar número de partículas (ej. 300), ajustar velocidad (speed), ángulo de emisión hacia arriba, y tamaño (size) en el estilo (style).
    - Añadir desenfoque (blur) al render para suavizar partículas.
    - Para humo blanco: color por defecto. Para humo negro: cambiar `Style > Color` a negro.
- **Método simple con footage de humo:**
    1. Descargar un video de humo en 4K (ej. de Artgrid o similar).
    2. En Fusion, añadir `MediaIn` para el video de humo y otro `MediaIn` para la imagen de la chimenea.
    3. Conectar ambos a un nodo `Merge`.
    4. Ajustar tamaño y posición del humo sobre la chimenea.
    5. Añadir un nodo `Rectangle Mask` (o máscara poligonal) sobre el `MediaIn` del humo, enmascarando desde la boca de la chimenea hacia arriba.
    6. Activar `Soft Edge` en la máscara para bordes suaves.
- **Convertir humo blanco a negro en Fusion:** Insertar un nodo `ColorCorrector` entre el `MediaIn` del humo y el `Merge`. Reducir la saturación (saturation) y dar un tono azulado/blanco para simular negro (el humo negro se ve como gris oscuro/azulado sobre fondo claro).
- **Añadir movimiento de cámara en la línea de tiempo:** Aplicar el efecto `Camera Movement` (o `Transform`) a los clips renderizados. Ajustar keyframes para un ligero zoom in/out o paneo, evitando que sea lineal.
- **Modo de composición clave:** Usar el modo de fusión `Screen` o `Lighten` en clips con fondo negro para que el humo se integre sin fondo.

## Reglas para agentes
- Usa `Screen` o `Lighten` como modo de fusión cuando el humo tenga fondo negro.
- Aplica `Soft Edge` en cualquier máscara que limite el humo para evitar bordes duros.
- Nunca uses humo sin máscara si solo quieres que salga de un punto específico (como la chimenea).
- Siempre convierte capas en objetos inteligentes en Photoshop antes de aplicar transformaciones no destructivas.
- Cuando uses partículas en Fusion, conecta `pEmitter` → `pRender` → `Blur` para un resultado más realista.

## Errores comunes que evita o menciona
- No olvidar conectar el `MediaIn` del humo a un monitor (viewer) para verlo; si no se ve, es porque falta esa conexión.
- No usar humo sin máscara: el humo debe enmascararse desde la boca de la chimenea para que parezca que sale de ahí.
- Evitar bordes duros en la máscara: siempre activar `Soft Edge` para transiciones suaves.
- No dejar el humo con tamaño o posición incorrecta: ajustar en el nodo `Merge` para que coincida con la chimenea.
- No olvidar cambiar el color del emisor a negro si se busca humo negro (en el método de partículas).