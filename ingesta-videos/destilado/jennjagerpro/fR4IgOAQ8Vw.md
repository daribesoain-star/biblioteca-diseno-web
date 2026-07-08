# Magnetic Mask + Motion Tracking in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/fR4IgOAQ8Vw

## Qué enseña (2-3 líneas)
Combina la máscara magnética (Magnetic Mask) con el rastreador de movimiento (Motion Tracker) en Final Cut Pro para componer una escena surrealista: una acróbata sobre un elefante, con cielo reemplazado, tienda de circo y efectos de luz. Muestra trucos de color, duplicación de clips y máscaras para separar elementos complejos como árboles.

## Lecciones accionables
- **Aplicar Magnetic Mask a un sujeto:** Selecciona el clip de la acróbata, ve a `Magnetic Mask` en el inspector, pinta sobre el sujeto para aislarlo del fondo.
- **Añadir Motion Tracker:** Selecciona el clip del elefante, ve a `Motion Tracking` > `Object Tracker`. Elige un punto de seguimiento (ej. la oreja del elefante por su contraste). **Desactiva la opción "Rotation"** en el inspector del tracker para evitar imprecisiones.
- **Ajustar color para integrar sujetos:** Abre `Color Adjustment` en el clip de la acróbata. Aumenta `Warmth` en highlights, mids y shadows para que coincida con la escena cálida. Alternativa: enfría la escena base bajando la temperatura y desaturando.
- **Reemplazar cielo con Magnetic Mask:** Aplica `Magnetic Mask` al clip del elefante para aislar el cielo. Si hay obstáculos (ej. árboles), duplica el clip, elimina efectos en la copia, aplica una nueva máscara magnética solo al árbol, luego usa `Luma Keyer` para dejar solo las ramas oscuras (silueta).
- **Suavizar horizonte sin perder nitidez del elefante:** Duplica el clip original del elefante. En la copia superior, aplica `Magnetic Mask` solo al elefante. En el clip inferior, recorta la parte superior (horizonte) con `Crop` y luego suaviza los bordes de la máscara magnética con el control `Softness`.
- **Agregar movimiento a un fondo estático:** Convierte un clip de cielo en `Hold Frame` (para eliminar rotación). Adjunta ese clip al mismo `Motion Tracker` que usas para el elefante, así se mueve con la cámara.
- **Corregir color de un área específica con Color Mask:** Abre `Color Board` > `Color Mask`, haz clic en el color del pasto (verde), ajusta `Saturation` y `Exposure` solo de esa área.
- **Desenfocar fondo gradualmente:** Aplica `Focus Blur` al clip base del elefante. Usa el control de degradado para que el enfoque sea nítido cerca del elefante y se difumine hacia atrás.
- **Integrar un elemento recortado externamente (tienda de circo):** Importa la imagen recortada (ej. desde Pixelmator Pro). Colócala debajo del clip del elefante con máscara. Ajusta `Color Adjustment` para oscurecer y enfriar. Aplica `Blur` para simular profundidad. Usa `Crop` con `Feather` para que la base se funda con el pasto.
- **Añadir efecto de luz mágica:** Crea un `Adjustment Layer`. Aplica un efecto de luz (ej. "Night Sky Light" del paquete C Studio de Motion VFX). En el inspector, usa el `Color Wheel` para cambiar el tinte y ajusta `Post Effects` para controlar la intensidad.

## Reglas para agentes
- **Usa Magnetic Mask** cuando necesites aislar un sujeto de su fondo en Final Cut Pro.
- **Desactiva la rotación en Object Tracker** si el movimiento es principalmente traslacional, para evitar seguimientos imprecisos.
- **Duplica clips** cuando quieras aplicar máscaras separadas a diferentes elementos del mismo metraje (ej. elefante y árbol).
- **Aplica Hold Frame** a clips de cielo con movimiento no deseado (rotación) para usarlos como fondos estáticos.
- **Usa Luma Keyer** después de aumentar el contraste para aislar siluetas oscuras (ej. ramas de árbol).
- **Ajusta el color del sujeto para que coincida con la escena** (temperatura, saturación) antes de integrarlo.
- **Nunca dejes bordes duros en elementos superpuestos** sin aplicar Feather o Blur para fundirlos con el fondo.
- **Usa Color Mask** para modificar un color específico (ej. pasto) sin afectar el resto de la imagen.

## Errores comunes que evita o menciona
- **No dejar la rotación activada en el Object Tracker** porque hace que el seguimiento sea "super impreciso".
- **No ignorar la diferencia de tono entre sujeto y fondo** (acróbata fría vs. escena cálida); siempre ajusta color para integrar.
- **No dejar el horizonte con borde duro** al reemplazar el cielo; duplica el clip, aísla el elefante y suaviza el horizonte por separado.
- **No usar el mismo tracker para elementos a diferente profundidad** (ej. tienda de circo lejana vs. elefante); crea un tracker independiente para cada uno.
- **No dejar elementos en foco cuando deberían estar desenfocados** por distancia (ej. tienda de circo); aplica blur gradual con Focus Blur.
- **No recortar un elemento sin feather** si debe parecer que está sobre el pasto; usa Crop + Feather para bordes suaves.