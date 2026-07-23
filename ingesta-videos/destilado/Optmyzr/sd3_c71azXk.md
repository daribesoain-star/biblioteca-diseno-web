# ROAS/Price Based Google Shopping Campaigns
**Fuente:** Optmyzr | https://youtu.be/sd3_c71azXk

## Qué enseña
Cómo crear campañas de Shopping agrupando productos por rangos de ROAS o precio usando Optmyzr Shopping Builder 2.0, sin necesidad de usar un feed suplementario. Explica la automatización para mover productos entre campañas según su rendimiento histórico.

## Lecciones accionables
- Selecciona "Crear nuevas campañas de Shopping" y elige el feed con el que trabajarás; la funcionalidad soporta campañas **Smart Shopping**, **Standard Shopping** y **todas las demás**.
- Para activar la división por ROAS o precio, marca el **primer atributo del split como "ROAS" o "Price Point"**; luego define el resto de la jerarquía de agrupación.
- El sistema agrega automáticamente el **último nivel del split como "item ID"** para monitorear el movimiento de productos entre campañas.
- Por defecto se generan campañas con rangos: **bajo ROAS**, **medio ROAS**, **alto ROAS** y una campaña **"ROAS Learning"** que contiene productos sin datos en los últimos 14 días o con menos de 5 conversiones.
- Puedes cambiar los umbrales de ROAS (ejemplo: ajustar rangos como "1 a 165") y renombrar campañas (ej: "low", "mid", "high").
- En campañas Smart Shopping, establece **targets de ROAS** específicos por campaña (ej: para productos con ROAS 332+, fijar target en 330 o 350).
- Configura **presupuestos y pujas** en la vista previa antes de crear; solo se generarán campañas que contengan productos.
- Activa la **automatización "Product Group Refresher"** (recomendado) para que el sistema re-evalúe productos diaria o semanalmente y los mueva entre campañas según su ROAS actual.
- Usa las **convenciones de nombres** y **palabras clave negativas** a nivel de campaña durante la configuración inicial.

## Reglas para agentes
- Usa **ROAS o Price Point como primer atributo del split** cuando quieras agrupar productos por rendimiento o precio.
- Nunca modifiques manualmente la estructura de campañas o grupos de productos en la interfaz de Google Ads después de creadas con Optmyzr; usa siempre **Shopping Builder 2.0** y el **Refresher 2.0** para actualizaciones.
- Siempre incluye la campaña **"ROAS Learning"** para productos sin suficientes datos (menos de 5 conversiones o sin actividad en 14 días).
- Configura la **automatización de refresco** (diaria o semanal) para mantener los productos en el rango de ROAS correcto.
- Verifica que solo las campañas con productos se creen en Google Ads; las campañas vacías se excluyen automáticamente.

## Errores comunes que evita o menciona
- No usar feed suplementario ni crear y mantener campañas manualmente, evitando trabajo repetitivo.
- No perder productos sin datos: la campaña "ROAS Learning" los captura automáticamente.
- No modificar campañas en Google Ads manualmente, ya que el sistema interno de Optmyzr almacena los rangos de ROAS y el refresco automatizado se desincronizaría.
- No olvidar activar el "Product Group Refresher" para que los productos se muevan dinámicamente según cambios en ROAS.