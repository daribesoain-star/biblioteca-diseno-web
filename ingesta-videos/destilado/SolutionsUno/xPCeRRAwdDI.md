# 🕸️ Expert Tips for Managing Campaign Overlap in Google Ads
**Fuente:** SolutionsUno | https://youtu.be/xPCeRRAwdDI

## Qué enseña
Explica cómo el solapamiento de campañas en Google Ads —especialmente con Performance Max— distorsiona métricas como CPA y ROAS debido a atribución fraccionada, remarketing dinámico cruzado entre canales (Facebook, email, orgánico) y la imposibilidad de excluir audiencias dentro de PMax. Enseña a diagnosticar caídas de rendimiento investigando fuentes externas antes que cambios internos en la cuenta.

## Lecciones accionables
- **Performance Max remarketea dinámicamente a TODOS los visitantes del sitio, sin importar su fuente original**: aunque configures PMax solo para tráfico frío, con exclusión de marca y URL expansion off, si un usuario llega desde Facebook, email o tráfico orgánico, PMax lo remarketeará automáticamente.
- **Para diagnosticar una caída repentina en PMax sin cambios en la cuenta**: preguntar al cliente "¿Qué ha cambiado en otros canales (Facebook, email, influencers, orgánico) en los últimos 7-14 días?" antes de modificar campañas de Google.
- **Cuando ejecutas múltiples campañas PMax con productos similares (ej: scrunchies, hair ties, headbands)**: Google puede dividir una misma conversión entre varias campañas (0.25 + 0.25 + 0.25 + 0.25), inflando el CPA real y reduciendo el ROAS aparente de cada campaña individual.
- **Para medir el rendimiento real de una campaña PMax con solapamiento**: usar atribución first-click o last-click en lugar de data-driven, sabiendo que first-click no cuenta view-through conversions.
- **Técnica avanzada para ver atribución real**: crear una conversión duplicada como "custom goal" con atribución first-click, asignarla como secundaria a nivel de campaña, y segmentar por "conversion action" para comparar first-click vs. data-driven en la misma campaña.
- **Cuando veas fracciones de conversión (0.01, 0.34, 0.91) en PMax**: asumir que son conversiones divididas entre campañas; calcular CPA real dividiendo el gasto total entre el número entero de conversiones (ej: 2.34 = 3 conversiones reales).
- **Para campañas PMax con tROAS o tCPA**: si hay solapamiento interno, ajustar los targets a la mitad (ej: si necesitas 300% ROAS, fijar target en 150%) porque Google mide contra mitades y tercios, no contra conversiones completas.
- **Usar segmentación por "conversion action" en informes de campaña**: permite ver cuántas conversiones atribuye cada modelo (data-driven vs. first-click vs. last-click) para la misma campaña.

## Reglas para agentes
- **Usa first-click o last-click como atribución** cuando midas campañas PMax con solapamiento interno; data-driven fracciona conversiones y distorsiona CPA/ROAS.
- **Nunca pauses una campaña PMax basándote solo en su CPA o ROAS individual** si hay productos similares en otras campañas PMax —primero verifica si las conversiones están siendo divididas entre campañas.
- **Investiga cambios en otros canales (Facebook, email, orgánico, influencers) antes de modificar PMax** cuando el rendimiento decae sin cambios internos en Google Ads.
- **No configures tCPA o tROAS en campañas PMax con solapamiento interno** sin ajustar los targets a la mitad del valor deseado.
- **Usa la técnica de "conversión duplicada como custom goal con first-click"** solo si entiendes que perderás view-through conversions.
- **Cuando veas fracciones de conversión en PMax**, calcula el CPA real dividiendo el gasto total entre el número entero más cercano (ej: 2.34 → dividir entre 3).

## Errores comunes que evita o menciona
- **Pensar que PMax solo remarketea tráfico de Google Ads**: en realidad remarketea a TODOS los visitantes del sitio, sin importar si vinieron de Facebook, email, orgánico o influencers.
- **Atribuir caídas de rendimiento a cambios en Google Ads cuando la causa real es tráfico externo de baja calidad**: un spike de tráfico de Facebook o email puede hacer que PMax remarketee a usuarios no interesados, reduciendo el ROAS.
- **Pausar una campaña PMax con bajo ROAS sin verificar si sus conversiones están siendo divididas con otra campaña**: al pausarla, la otra campaña absorbe todas las conversiones y su ROAS aparente mejora, pero el rendimiento real no cambió.
- **Confiar en métricas de CPA y ROAS individuales de campañas PMax cuando hay productos similares en múltiples campañas**: las fracciones de conversión hacen que los datos parezcan peores (o mejores) de lo que realmente son.
- **No considerar que el tráfico de email marketing propio puede afectar PMax**: un envío masivo a suscriptores puede generar picos de tráfico que PMax remarketea, distorsionando las conversiones de los días siguientes.
- **Usar data-driven attribution en campañas PMax con solapamiento sin entender que fracciona conversiones**: puede mostrar 0.01 conversiones con $39 de gasto, dando un CPA de $3,900 que no refleja la realidad.