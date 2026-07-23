# WCAG 2.2 — Contrast Minimum (SC 1.4.3)
**Materia:** tipografia-jerarquia-visual | **Fuente:** https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html (consultada 2026-07-07)

## Qué aporta
Define el contraste mínimo necesario entre texto y fondo para que personas con baja visión moderada o percepción de contraste reducida puedan leer sin tecnología asistiva. Establece umbrales cuantitativos exactos según el tamaño del texto y excepciones para componentes inactivos, decoración pura y logotipos.

## Reglas candidatas para agentes
1. Todo texto de menos de 18pt (24px) si no es negrita, o menos de 14pt (18.5px) si es negrita, debe tener una **relación de contraste de al menos 4.5:1** con su fondo (técnica G18).
2. Todo texto de al menos 18pt (24px) si no es negrita, o al menos 14pt (18.5px) si es negrita, debe tener una **relación de contraste de al menos 3:1** con su fondo (técnica G145).
3. No redondear valores de contraste: 4.499:1 no cumple el umbral de 4.5:1.
4. Si se especifica color de texto sin color de fondo, o viceversa, es fallo (F24).
5. Si se usan imágenes de fondo que no proporcionan contraste suficiente con el texto superpuesto, es fallo (F83).
6. Texto decorativo, texto en componentes de interfaz inactivos, texto en logotipos/marcas, y texto en imágenes con otro contenido visual significativo están exentos del requisito de contraste.
7. Para calcular el contraste, usar la fórmula: (L1 + 0.05) / (L2 + 0.05), donde L1 es la luminancia relativa del color más claro y L2 la del más oscuro.
8. La conversión de RGB no lineal a lineal sigue la fórmula IEC/4WD 61966-2-1 con el valor umbral 0.04045 para la corrección gamma.
9. 1pt = 1.333px; 14pt equivale a ~18.5px; 18pt equivale a ~24px.

## Errores comunes que documenta
- Especificar colores de primer plano sin color de fondo, o viceversa (F24), porque el color de fondo predeterminado del usuario es desconocido y no puede evaluarse.
- Usar imágenes de fondo que no proporcionan contraste suficiente con el texto superpuesto (F83).
- Redondear valores de contratio (ej. 4.499:1 tratarlo como 4.5:1).
- Usar fuentes inusualmente finas o con trazos muy delgados que, aunque nominalmente pasen el contraste, en la práctica se renderizan con color más tenue por el anti-aliasing.
- Asumir que logotipos que actúan como componentes de interfaz (enlaces, controles) están exentos del requisito de contraste.

## Datos/citas clave textuales
- "The visual presentation of text and images of text has a contrast ratio of at least 4.5:1"
- "Large-scale text and images of large-scale text have a contrast ratio of at least 3:1"
- "18 point text or 14 point bold text is judged to be large enough to require a lower contrast ratio"
- "1pt = 1.333px, therefore 14pt and 18pt are equivalent to approximately 18.5px and 24px"
- "the computed values should not be rounded (e.g., 4.499:1 would not meet the 4.5:1 threshold)"
- "A contrast ratio of 3:1 is the minimum level recommended by ISO-9241-3 and ANSI-HFES-100-1988"
- "visual acuity of 20/40 is associated with a contrast sensitivity loss of roughly 1.5. A user with 20/40 would thus require a contrast ratio of 3 * 1.5 = 4.5 to 1"
- "The 7:1 level therefore generally provides compensation for the loss in contrast sensitivity experienced by users with low vision who do not use assistive technology"
- "Contrast ratios can range from 1 to 21 (commonly written 1:1 to 21:1)"
- "If no background color is specified, then white is assumed"
- "It is a failure if no background color is specified when the text color is specified"
- "For the sRGB colorspace, the relative luminance of a color is defined as L = 0.2126 * R + 0.7152 * G + 0.0722 * B"