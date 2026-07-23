# mike-rhodes-negative-script
**Fuente:** https://mikerhodes.com.au/scripts/neg | canal temático: google-ads | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Un script para Google Ads que automatiza el análisis de términos de búsqueda y detecta oportunidades de palabras clave negativas. Enseña a reducir gasto desperdiciado usando umbrales configurables, clasificación por rendimiento, patrones n-gram y limpieza de negativos redundantes, manteniendo siempre revisión humana antes de aplicar cambios.

## Lecciones accionables
- Analiza términos de búsqueda para encontrar tres tipos de oportunidades: términos de bajo rendimiento que consumen presupuesto, palabras clave negativas redundantes que pueden limpiarse y patrones repetidos que sugieren negativos más amplios.
- Usa umbrales de rendimiento configurables:
  - CTR bajo: por defecto, menos de `0.25%` con `10+` impresiones.
  - CPA alto: por defecto, `1.5x` el CPA objetivo.
  - ROAS bajo: por defecto, `0.5x` el ROAS objetivo, especialmente útil en cuentas ecommerce.
- Clasifica los términos en buckets antes de decidir:
  - Alta conversión: funcionan bien, no tocar.
  - Baja conversión: convierten, pero caro; revisar con cuidado.
  - Cero conversión: generan clics sin conversiones; candidatos probables a negativos.
- Analiza patrones n-gram de `1`, `2` y `3` palabras dentro de términos de bajo rendimiento para detectar palabras comunes que aparecen en múltiples búsquedas malas y convertirlas en negativos más amplios.
- Revisa listas de negativos existentes para encontrar redundancias:
  - Negativos que ya no reciben impresiones.
  - Negativos que se solapan con otros en la misma lista.
  - Negativos que podrían consolidarse en menos términos más amplios.
- Mantén la opción de auto-pausa desactivada por defecto; la limpieza debe estar bajo control del usuario.
- Si usas IA, habilita recomendaciones opcionales con una API key propia de OpenAI o Anthropic. La IA revisa patrones, métricas, buckets y n-grams para generar hasta `200` sugerencias priorizadas con razonamiento.
- El script funciona con o sin IA; la IA es una capa opcional, no un requisito.
- Para una cuenta individual: copia la plantilla o deja que el script la cree automáticamente, añade el script, ejecútalo y revisa recomendaciones.
- Para MCC: copia la plantilla maestra, configura ajustes de cuenta, añade el script al MCC, ejecuta la recolección inicial, revisa recomendaciones y programa ejecuciones si corresponde.
- Requisitos operativos:
  - Acceso Standard o Admin a la cuenta.
  - Mínimo recomendado: `$500` de gasto en los últimos `30` días para recomendaciones confiables.
  - Google Sheets usando el mismo email que Google Ads.
  - Periodo de análisis por defecto: `7` días, configurable.
  - Puede correr en cuentas grandes y suele completarse en minutos.
- Cadencia recomendada:
  - Cuentas activas: semanal o quincenal.
  - Cuentas pequeñas: mensual.
  - Limpieza de negativos redundantes: trimestral.
- Funciona en Shopping y en todos los tipos de campaña.
- El usuario debe implementar manualmente los negativos aceptados e ignorar los que no tengan sentido.
- Configuraciones disponibles: periodo de análisis, umbrales, auto-pause, modo IA, modo CPA o ROAS.
- Modelo comercial del recurso: `$109` pago único, usos ilimitados, cuentas ilimitadas y actualizaciones gratuitas de por vida.

## Reglas para agentes
- Usa el umbral de CTR bajo cuando un término tenga menos de `0.25%` CTR y al menos `10` impresiones, salvo que la cuenta tenga benchmarks propios configurados.
- Usa el umbral de CPA alto cuando el CPA del término sea `1.5x` o más que el objetivo definido.
- Usa el umbral de ROAS bajo cuando el ROAS sea `0.5x` o menos que el objetivo, especialmente en ecommerce.
- Nunca añadas palabras clave negativas automáticamente sin revisión humana.
- Clasifica cada término como alta conversión, baja conversión o cero conversión antes de recomendar acción.
- Usa análisis n-gram de `1`, `2` y `3` palabras cuando varios términos de bajo rendimiento compartan patrones.
- Prioriza negativos amplios solo cuando el patrón aparece repetidamente en términos de bajo rendimiento.
- Revisa negativos redundantes de forma trimestral.
- Ejecuta el análisis semanal o quincenal en cuentas activas; usa frecuencia mensual en cuentas pequeñas.
- Marca las recomendaciones como menos confiables si la cuenta gastó menos de `$500` en los últimos `30` días.
- Requiere acceso Standard o Admin antes de intentar instalar o correr el script.
- Usa el mismo email para Google Ads y Google Sheets.
- Mantén la auto-pausa apagada por defecto.
- Usa IA solo si el usuario aporta una API key propia de OpenAI o Anthropic.
- Limita las recomendaciones IA a hasta `200` sugerencias priorizadas.
- Permite ajustar periodo, umbrales, modo CPA/ROAS y uso de IA según el rendimiento real de la cuenta.

## Errores comunes que evita o menciona
- Revisar términos de búsqueda manualmente y perder patrones repetidos de bajo rendimiento.
- Añadir negativos sin distinguir entre términos de alta conversión, baja conversión y cero conversión.
- Usar umbrales genéricos sin ajustarlos al rendimiento real de la cuenta.
- Cortar tráfico rentable por aplicar negativos demasiado amplios sin revisar n-grams y métricas.
- Ignorar términos con clics y cero conversiones que consumen presupuesto.
- No limpiar listas antiguas de negativos que ya no reciben impresiones o se solapan entre sí.
- Confiar en recomendaciones con bajo volumen de datos, especialmente con menos de `$500` de gasto en `30` días.
- Creer que la IA es obligatoria para el análisis; el script funciona sin ella.
- Creer que el script aplica negativos automáticamente; solo entrega recomendaciones.
- Revisar negativos redundantes con demasiada poca frecuencia en vez de hacerlo trimestralmente.