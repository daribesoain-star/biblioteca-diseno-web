```markdown
# How to score Google Ads leads for better offline conversions
**Fuente:** NA | https://youtu.be/Tev0TcezClo
**Dominio:** google-ads

## Qué enseña (2 líneas)
A implementar un sistema de puntuación de leads (lead scoring) basado en eventos del CRM para identificar leads de alta calidad y subirlos como conversiones offline a Google Ads. El objetivo es mejorar la tasa de cierre del equipo de ventas y optimizar las campañas para obtener leads que realmente generen resultados de negocio.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)
1.  **Integrar CRM con Google Ads:** Conecta tu CRM (ej. HubSpot) con Google Ads para capturar automáticamente el **GCLID (Google Click ID)** en cada lead. Si no hay integración directa, usa **Zapier** para pasar el GCLID como propiedad personalizada.
2.  **Crear un flujo de puntuación (Lead Scoring Workflow):** En tu CRM, crea un workflow que asigne puntos de forma **incremental (no acumulativa)** basado en propiedades del lead. Ejemplo de puntuación para una empresa de jardinería:
    *   **Ubicación (dentro del área de servicio):** Puntos altos (ej. +50). Si está fuera, 0 puntos o puntos negativos.
    *   **Presupuesto estimado (Tier de gasto):** Ordena por valor del proyecto. Ej: Proyecto pequeño (+10), mediano (+20), grande (+30).
    *   **Estado del lead (Lead Status):** Define una escala de 0 a 100. Ej: Formulario enviado (+0), llamada sin respuesta (+0), buena conversación telefónica (+10), cotización enviada (+20), orden de trabajo firmada (+40), pago por adelantado (+60), cliente satisfecho (+80).
3.  **Automatizar cambios de estado:** Crea workflows que actualicen el "Lead Status" automáticamente. Por ejemplo: "Cuando se cree un trato (deal) asociado al contacto, actualizar el estado a 'Orden firmada'".
4.  **Subir conversiones offline a Google Ads:**
    *   Filtra en tu CRM los leads con la puntuación más alta (ej. los que tienen "Orden firmada" o "Pago recibido").
    *   Exporta el **GCLID** de esos leads.
    *   Súbelos a Google Ads como **"Conversiones offline"** (Offline Conversions) dentro de los 90 días posteriores al clic.
5.  **Usar pujas basadas en valor (Value-Based Bidding):** Si asignas un valor monetario a cada lead (ej. el valor del contrato firmado), actívalo en la conversión offline para que Google optimice hacia leads de mayor valor.

## Reglas para el erudito ("usa X cuando Y")
*   **Usa Lead Scoring incremental (no acumulativo)** cuando quieras que la puntuación refleje el estado actual del lead, no la suma de todas sus interacciones pasadas. Así, si un lead retrocede de etapa, su puntuación baja automáticamente.
*   **Usa Zapier o integraciones nativas** cuando tu CRM no tenga una conexión directa con Google Ads para capturar el GCLID.
*   **Usa un evento que ocurra dentro de 90 días** como medida de calidad si el ciclo de ventas de tu cliente es más largo que ese plazo. El GCLID expira a los 90 días.
*   **Usa opciones predefinidas (dropdowns) en los formularios** en lugar de campos de texto libre para la ubicación o el presupuesto, para evitar errores tipográficos que rompan las automatizaciones de puntuación.

## Errores comunes
- **No revisar periódicamente los datos del CRM:** Los errores tipográficos en campos de texto libre (como "ciudad") pueden hacer que un lead no entre en el flujo de puntuación correcto o reciba una puntuación incorrecta.
- **Confiar en que el equipo de ventas hará la cualificación manualmente:** El creador del video asume que los vendedores no tienen tiempo ni urgencia para calificar leads, por lo que automatizar la puntuación es crítico.
- **Subir todos los leads como conversiones offline:** Solo debes subir aquellos que hayan demostrado ser de alta calidad (ej. que firmaron un contrato o pagaron). Subir leads fríos o spam perjudica el modelo de optimización.
- **Ignorar la ventana de 90 días del GCLID:** Si el ciclo de ventas es más largo, debes encontrar un hito intermedio (ej. "cotización enviada" o "reunión agendada") que ocurra dentro de esos 90 días para usarlo como señal de calidad.
```