# 5 Most Common Attribution Mistakes
**Fuente:** JonLoomer | https://youtu.be/Q3X1ZBjOTdI

## Qué enseña
Explica cómo Meta asigna crédito a un anuncio por una conversión (generalmente en sitio web), y detalla los cinco errores de configuración, aplicación e interpretación de la atribución que distorsionan el reporting, la optimización y el targeting en Ads Manager.

## Lecciones accionables
- **Configurar el píxel y/o Conversions API (CAPI):** Implementar manualmente o mediante herramienta de terceros. Si una conversión ocurre offline (ej. lead cerrado por vendedor), usar la API de offline/CRM para pasar ese evento a Meta.
- **Usar standard events siempre que sea posible:** Son eventos predefinidos de Meta: `Purchase`, `CompleteRegistration`, `Lead`, `AddToCart`. Definen cualquier compra en el sitio, no un producto específico.
- **Crear custom events para acciones sin bucket predefinido:** Ejemplos del creador: tiempo en el sitio, scroll down, reproducción de video de YouTube embebido.
- **Usar custom conversions para detallar eventos:** No son lo mismo que custom events. Sirven para añadir una columna que indique, por ejemplo, "compra de este producto específico" mapeando sobre standard events o custom events.
- **Comparar attribution settings en Ads Manager:** Hacer clic en el encabezado de la columna de resultados, seleccionar todas las columnas de atribución (1-day click, 7-day click, 1-day view, 28-day click) para ver el desglose real.
- **Cambiar la attribution setting a nivel de ad set:** En el ad set, hacer clic en "Show More Options" → "Edit" y modificar la ventana de atribución. Para registros gratuitos o decisiones rápidas, cambiar a "1-day click" y desactivar "view-through conversions".
- **Ignorar los resultados de "1-day view" para conversiones que requieren reflexión o aprobación** (ej. productos caros): esos usuarios vieron el anuncio, luego buscaron en Google y compraron; la vista de 1 día no refleja el recorrido real.

## Reglas para agentes
- Usa standard events siempre que exista un bucket predefinido de Meta (Purchase, CompleteRegistration, Lead, etc.); no los reemplaces con custom events o custom conversions.
- Nunca uses "custom conversions" y "custom events" como términos intercambiables; son conceptos distintos con roles únicos.
- Nunca compares directamente los números de Google Analytics con los de Ads Manager esperando que coincidan; ambos reportan con metodologías diferentes (Meta usa 7-day click + 1-day view por defecto; Google no rastrea view-through ni cambios de dispositivo).
- Cambia la attribution setting por defecto (7-day click + 1-day view) a "1-day click" (sin view-through) para cualquier conversión que no sea una compra o que sea una decisión rápida y gratuita (ej. registros).
- Verifica siempre que los eventos no estén disparándose en la página incorrecta o en el paso incorrecto del embudo; si Ads Manager reporta muchas compras que no ocurrieron, el error está en la configuración, no en Meta inflando números.

## Errores comunes que evita o menciona
1. **Configuración incorrecta o incompleta del píxel o Conversions API:** No pasar eventos offline (CRM API) ni usar herramientas de terceros sin verificar.
2. **Fallo en entender standard events, custom events y custom conversions:** Usarlos indistintamente cuando tienen propósitos únicos; no configurar eventos para todas las acciones importantes del sitio.
3. **Incapacidad para interpretar los resultados de conversión:** Tomar la columna de resultados al pie de la letra sin considerar las attribution settings (7-day click, 1-day view, etc.) y sin aplicar contexto (ej. descartar 1-day view para registros gratuitos).
4. **Esperar que Google Analytics y Ads Manager reporten lo mismo:** Ignorar que Meta rastrea view-through y cambios de dispositivo que Google no captura.
5. **Dejar siempre la attribution setting en el valor por defecto (7-day click + 1-day view):** No ajustarla según el tipo de conversión (ej. cambiar a 1-day click para registros gratuitos), lo que infla resultados y distorsiona la entrega de anuncios.