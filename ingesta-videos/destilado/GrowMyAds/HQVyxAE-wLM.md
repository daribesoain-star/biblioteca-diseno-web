# How to Stop Spam Leads from Performance Max Campaigns (Lead Gen)
**Fuente:** GrowMyAds | https://youtu.be/HQVyxAE-wLM

## Qué enseña (2-3 líneas)
Elimina leads spam en campañas Performance Max de generación de leads (no e-commerce) usando un campo oculto "honeypot" en el formulario de la landing page, combinado con un ajuste específico en la configuración de la campaña para que todo el tráfico vaya a esa página. El método filtra bots al no disparar la conversión si el campo oculto se rellena, entrenando al Smart Bidding solo con conversiones humanas reales.

## Lecciones accionables
- **Crea una landing page DEDICADA exclusivamente para Performance Max**, con una URL diferente a la de Search, Display o YouTube. Ejemplo: `tudominio.com/pmax` vs `tudominio.com/gracias`. Esto permite control de calidad total y saber que el tráfico proviene solo de PMax.
- **Implementa un campo oculto "honeypot" en el formulario** (ej: "Describe tu proyecto", no requerido, oculto para humanos visible para bots). En Instapage: editar formulario → mostrar campos ocultos → agregar campo → marcarlo como "hidden" y "not required".
- **Configura el tracking de conversiones** para que NO se dispare si el campo honeypot está relleno. En tu sistema de eventos (GTM, landing page builder): "si campo oculto tiene valor → no enviar conversión a Google Ads; si campo oculto vacío y campos reales llenos → enviar conversión".
- **Desactiva "Optimización de activos" > "Texto"** en la configuración de la campaña Performance Max. Ruta: Campaña → Configuración → Configuración adicional → Optimización de activos → Texto → DESACTIVAR. Esto evita que Google envíe tráfico a URLs aleatorias de tu sitio, forzando que todo el tráfico vaya a tu landing page con honeypot.
- **Usa un constructor de landing pages que soporte campos ocultos** (Instapage, Unbounce, Leadpages, etc.). Si no lo soporta, cambia de herramienta.

## Reglas para agentes
- Usa una landing page DIFERENTE (URL distinta) para cada campaña Performance Max de leads.
- Desactiva SIEMPRE "Optimización de activos" > "Texto" en campañas PMax de generación de leads para forzar tráfico a la URL exacta.
- Nunca incluyas el campo honeypot como visible para humanos; debe estar oculto en CSS o en la configuración del builder.
- Nunca dispares una conversión a Google Ads si el campo honeypot contiene algún valor.
- Nunca uses la misma landing page de Search/Display para PMax sin el campo honeypot y sin desactivar la optimización de texto.

## Errores comunes que evita o menciona
- **Usar la misma landing page para PMax y otras campañas**: pierdes control sobre qué tráfico es de PMax y no puedes aislar el honeypot.
- **Dejar activada "Optimización de activos" > "Texto"**: Google envía tráfico a otras URLs de tu sitio, saltándose la página con honeypot y arruinando la estrategia.
- **No filtrar conversiones por campo honeypot**: si el bot rellena el campo oculto y aún así se dispara la conversión, Google aprende de tráfico spam y lo replica.
- **Asumir que todos los builders tienen campos ocultos**: verificar antes de implementar; si no, cambiar de herramienta.