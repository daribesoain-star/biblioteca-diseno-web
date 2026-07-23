# The RIGHT Way to Test and Optimize Responsive Search Ads: Step-by-Step Tutorial
**Fuente:** GrowMyAds | https://youtu.be/YdWyP7IuG-0

## Qué enseña (2-3 líneas)
Este tutorial enseña cuatro métodos para probar y optimizar anuncios de búsqueda responsivos (RSA) en Google Ads: limpieza de activos de bajo rendimiento, adición de un segundo RSA por grupo de anuncios, uso de experimentos de campaña y uso de variaciones de anuncios. El instructor revela que su método favorito es el de variaciones de anuncios por su control granular y facilidad de implementación.

## Lecciones accionables
- **Método 1: Limpiar activos con etiqueta "low"**
  - Ir a la pestaña de anuncios dentro del grupo de anuncios → hacer clic en "View asset details" para abrir el informe de activos del RSA.
  - Identificar todos los titulares y descripciones etiquetados como "low" (bajo rendimiento).
  - Eliminar esos activos y reemplazarlos con titulares/descripciones nuevos y no probados.
  - Mantener una hoja de registro ("ad testing sheet") con columnas: titular/descripción probado, resultado (low/best), y nota de no reutilizar en otros canales (Facebook, TikTok).
  - Ejemplo de titular a registrar como fallido: "conquer your awkward space" (etiquetado low).

- **Método 2: Agregar un segundo RSA al grupo de anuncios**
  - Crear un nuevo RSA dentro del mismo grupo de anuncios donde ya hay uno activo.
  - Asegurarse de que cada titular sea único e impactante (no repetir frases similares como "save 30% off" y "30% off").
  - Probar por **temas** (themes), no cambios pequeños:
    - Precio vs. selección de productos
    - Características y beneficios (features & benefits) vs. otro conjunto diferente
    - Comparación (para keywords de competidores o alternativas)
    - Titulares fijados (pinned) vs. no fijados
  - Crear un RSA completo con 15 titulares y 4 descripciones sin pines, y otro RSA con titulares y descripciones fijados en posiciones específicas, y comparar rendimiento.

- **Método 3: Experimentos de campaña (Campaign Experiments)**
  - Navegar a nivel de cuenta → sección "Experiments" → "Create new experiment".
  - Seleccionar "Custom experiment" → tipo de campaña "Search".
  - Nombrar el experimento con el tema probado (ej. "deep seat features one").
  - Dentro del experimento (trial campaign), pausar el anuncio original y crear un nuevo anuncio con el cambio a probar.
  - Configurar:
    - **Split:** 50% trial / 50% base (recomendado).
    - **Tipo de split:** "Cookie-based" (dejar por defecto) o "Search-based" (resultados más rápidos).
    - **Duración:** 30 días.
    - **Enable sync:** ACTIVADO para que los cambios de puja en la campaña base se sincronicen automáticamente al trial.
  - Programar inicio para el día siguiente (no se puede iniciar el mismo día).
  - Monitorear desde la pestaña Experiments a nivel de cuenta (ícono de laboratorio).

- **Método 4 (FAVORITO): Variaciones de anuncios (Ad Variations)**
  - Desde el grupo de anuncios → botón azul "Create new ad" → seleccionar "Ad variation".
  - **Targeting:** Elegir campaña (ej. "deep seat campaign") y condición para encontrar anuncios base (ej. cualquier anuncio que contenga "conquer your awkward spaces").
  - **Tipo de variación:**
    - "Find and replace text": buscar "conquer your awkward spaces" y reemplazar por "perfect for small spaces".
    - "Update URLs": para pruebas de landing pages (swap de URLs con split 50/50).
    - "Update text": editar, eliminar o fijar (pin) titulares/descripciones.
  - Configurar:
    - **Experiment split:** 50% del presupuesto para la variación.
    - **Duración:** 30 días.
  - Crear variación → monitorear en la pestaña Experiments → "Ad variations" → ver datos de clics, impresiones, CTR y conversiones comparando "Modified ad" vs. "Original ad".

## Reglas para agentes
- Usa "View asset details" para acceder al informe de rendimiento de activos de un RSA antes de hacer cualquier cambio.
- Elimina todo titular o descripción etiquetado como "low" y reemplázalo con copia nueva; nunca lo reutilices en otros canales.
- Cuando agregues un segundo RSA al mismo grupo de anuncios, asegúrate de que los 15 titulares y 4 descripciones sean únicos y no repitan frases similares.
- Prueba por temas completos (precio, características, fijación vs. no fijación), no por cambios de una sola palabra.
- En experimentos de campaña, activa siempre "Enable sync" para que los cambios de puja se sincronicen automáticamente entre base y trial.
- En experimentos de campaña, programa el inicio para el día siguiente; no se puede iniciar el mismo día de creación.
- Usa variaciones de anuncios (Ad Variations) como método preferido para pruebas controladas al 50/50, especialmente para reemplazar titulares específicos o probar URLs de aterrizaje.
- Nunca confíes en la métrica "Ad Strength" de Google; es un "nonsense metric" que no impacta el rendimiento real.

## Errores comunes que evita o menciona
- **Repetir frases similares en titulares:** Ejemplo: "save 30% off" y "30% off" ocupan espacio sin aportar variedad real; desperdicia oportunidades de prueba.
- **Confiar en "Ad Strength":** Google la presenta como indicador de calidad, pero el instructor la califica de "total nonsense metric" que no afecta el rendimiento.
- **No llevar registro de titulares fallidos:** Si no se anota qué copia tuvo etiqueta "low", se corre el riesgo de reutilizarla en futuros anuncios o en otros canales (Facebook, TikTok).
- **Iniciar experimentos el mismo día:** Los experimentos de campaña requieren programación para el día siguiente; intentar iniciarlos el mismo día falla.
- **No sincronizar cambios de puja en experimentos:** Si "Enable sync" está desactivado, cambios en la campaña base (como ajustes de puja) pueden invalidar los resultados del experimento.
- **Probar cambios demasiado pequeños en lugar de temas completos:** Probar un solo titular sin contexto temático no da suficiente señal para que el machine learning de Google optimice.