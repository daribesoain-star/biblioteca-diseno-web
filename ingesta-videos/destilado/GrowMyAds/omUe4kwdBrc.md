# The RIGHT Way to Set Up Brand Shopping Campaigns in Google Ads
**Fuente:** GrowMyAds | https://youtu.be/omUe4kwdBrc

## Qué enseña
Cómo aislar las búsquedas de marca dentro de una campaña de Shopping estándar, usando una combinación de negativos en campañas no-brand y una estrategia de puja con un target de ROAS extremadamente alto para que Google priorice mostrar solo términos de marca. Explica el concepto de "brand protection" para e-commerce, evitando que el tráfico de marca distorsione los datos de campañas no-brand y Performance Max.

## Lecciones accionables
- **Crear una campaña de Shopping estándar dedicada a marca**: nómbrala con un prefijo como "SH brand [nombre_marca]" para identificarla fácilmente.
- **Negar términos de marca en todas las demás campañas**:
  - En la campaña de Shopping estándar no-brand: añadir los términos de marca como **palabras clave negativas** a nivel de campaña.
  - En la campaña de Performance Max: usar la función **Brand Exclusions** (exclusiones de marca) para que la marca no aparezca en absoluto.
- **Configurar la puja de la campaña de marca**:
  - Opción 1 (recomendada para arranque): usar **puja manual por CPC** con un valor igual al **CPC promedio histórico de tus términos de marca** (obtenido de los informes de términos de búsqueda).
  - Opción 2 (después de tener datos): cambiar a **Target ROAS** con un valor extremadamente alto, por ejemplo **1,000% o 1,500%**.
- **Calcular el CPC promedio de marca**: dentro de la campaña actual donde vive la marca, filtrar términos de búsqueda que contengan el nombre de marca (ej. "home reserve") y extraer el **Avg. CPC** de ese segmento.
- **Ajustar el Target ROAS inicial**: si se parte de datos históricos, usar el ROAS real de los términos de marca en Shopping (ej. 1,200%) y redondearlo hacia arriba (ej. 1,500%).
- **Estrategia de calentamiento**: comenzar con puja manual CPC al promedio de marca, obtener volumen de conversiones, y luego cambiar a Target ROAS alto.

## Reglas para agentes
- **Usa** un Target ROAS de al menos 1,000% en la campaña de Shopping de marca para filtrar automáticamente la mayoría del tráfico no-brand.
- **Nunca** dejes términos de marca dentro de campañas de Shopping no-brand o Performance Max; siempre negarlos o excluirlos.
- **Siempre** revisa los términos de búsqueda de la campaña de marca después de lanzarla para confirmar que >90% sean de marca.
- **Si** el CPC promedio de marca es muy bajo (ej. $0.20–$0.37), usa ese valor como puja manual inicial; no subestimes la puja.
- **Cuando** tengas campañas no-brand con Target ROAS bajo (ej. 200%) y la de marca con ROAS alto (ej. 1,500%), Google priorizará mostrar el anuncio en la campaña no-brand para búsquedas genéricas, protegiendo así la segmentación.

## Errores comunes que evita o menciona
- **No usar palabras clave en Shopping**: a diferencia de Search, no se puede pujar por keywords; la segmentación se logra con negativos y puja agresiva.
- **Dejar términos de marca en Performance Max**: esto distorsiona los datos de rendimiento no-brand y puede hacer que la campaña de marca no tenga suficiente volumen.
- **Pensar que la campaña de marca solo mostrará términos de marca**: aunque el Target ROAS alto filtra la mayoría, pueden aparecer algunos clics no-brand; es aceptable pero marginal.
- **No calcular el CPC promedio de marca antes de lanzar**: arrancar sin ese dato puede llevar a pujas demasiado altas o bajas, perdiendo eficiencia.
- **Confundir "brand protection" con "brand search"**: la protección de marca en Shopping requiere una campaña separada, no solo negativos en Search.