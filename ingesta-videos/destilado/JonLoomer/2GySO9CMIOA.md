# What Attribution Setting Should You Use?
**Fuente:** JonLoomer | https://youtu.be/2GySO9CMIOA

## Qué enseña
Jon Loomer explica cómo elegir la configuración de atribución en Meta Ads según el objetivo de la campaña. Distingue entre ventas (conversiones que requieren inversión financiera) y acciones gratuitas (leads, formularios, registros), y detalla cuándo usar la atribución predeterminada de 7 días clic + 1 día view + 1 día engaged view frente a la opción de 1 día clic. También cubre excepciones como remarketing y las opciones de atribución incremental y conteo de conversiones.

## Lecciones accionables
- **Para campañas de venta de productos/servicios**: usa la atribución predeterminada: **7-day click, 1-day view, 1-day engaged view**. Meta define conversión como: clic en el anuncio + conversión en 7 días, o visualización sin clic + conversión en 1 día, o visualización de video + conversión en 1 día.
- **Para campañas de leads, formularios, registros gratuitos o descargas**: cambia a **1-day click only**. Si alguien hace clic en un anuncio de algo gratuito y no convierte inmediatamente, probablemente no está interesado; no se debe acreditar la conversión por view-through.
- **Para remarketing (ventas)**: elimina **1-day view** y **1-day engaged view** de la atribución. Mantén solo **7-day click**. Si no, Meta acreditará conversiones view-through de personas que ya conocen tu marca por otros canales (email, contenido), inflando resultados.
- **Atribución incremental**: déjala en **standard** por defecto. La opción incremental (modelado avanzado para predecir causalidad) no ha mostrado buenos resultados en la experiencia del autor; solo experimentar si se desea probar.
- **Conteo de conversiones**: para optimización, usa **all conversions**. La opción **first conversion** es útil solo para reportes, no para optimización de campañas.
- **Pasos prácticos**:
  1. Al crear un conjunto de anuncios, ve a la sección de atribución.
  2. Para ventas: no modifiques, deja el default (7-day click, 1-day view, 1-day engaged view).
  3. Para leads/registros: selecciona **1-day click**.
  4. Para remarketing de ventas: selecciona **7-day click** y desmarca las opciones de view.

## Reglas para agentes
- Usa **7-day click + 1-day view + 1-day engaged view** cuando el objetivo sea una compra o conversión que requiera inversión financiera.
- Usa **1-day click only** cuando el objetivo sea un lead, formulario, registro gratuito o descarga.
- Nunca uses **1-day view** ni **1-day engaged view** en campañas de remarketing para ventas; elimínalos siempre.
- No actives **atribución incremental** a menos que estés realizando un experimento controlado; usa **standard** por defecto.
- Para optimización de campañas, configura el conteo de conversiones en **all conversions**, no en **first conversion**.

## Errores comunes que evita o menciona
- **Usar atribución de 7 días para leads gratuitos**: error porque alguien que no convierte al instante en algo gratuito probablemente no está interesado; la ventana larga infla falsos positivos.
- **Dejar view-through en remarketing**: Meta acreditará conversiones de personas que ya conocen tu marca por otros canales (email, contenido), haciendo que los resultados parezcan mejores de lo real.
- **Confiar en atribución incremental sin validación**: el autor reporta que no funciona como se espera; puede empeorar la calidad de los datos.
- **Usar first conversion para optimización**: solo debe usarse para reportes, no para el algoritmo de entrega.