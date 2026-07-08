# Background Remover Final Cut Pro 
**Fuente:** jennjagerpro | https://youtu.be/v4F1Wo0jcPE

## Qué enseña (2-3 líneas)
Compara cuatro herramientas para eliminar fondos en Final Cut Pro: Scene Removal Mask (nativa), Keyper (FX Factory), Background Remover (FX Factory) y M Roto AI (Motion VFX). Evalúa costo, facilidad de uso y efectividad en distintos tipos de sujetos (personas, animales, objetos).

## Lecciones accionables
- **Scene Removal Mask (nativa de FCP):** Arrastrar y soltar sobre el clip. Requiere que en algún punto del clip (inicio o final) el fondo esté vacío, sin sujeto. Sin opciones de ajuste fino en el inspector. Funciona solo con sujetos comunes (personas, coches). No requiere compra adicional.
- **Keyper (FX Factory):** Arrastrar y soltar sobre el clip. No necesita un fotograma vacío; el sujeto puede estar presente todo el clip. Diseñado para seres humanos. En el inspector se pueden ajustar parámetros para limpiar el recorte. Si falla en un área (ej. objeto sostenido), duplicar clip, eliminar Keyper y aplicar una Draw Mask manual sobre esa zona.
- **Background Remover (FX Factory):** Arrastrar y soltar. Viene con variedad de looks predefinidos. En el inspector, ajustar "Sensitivity" y "Contour" para limpiar bordes problemáticos. Reconoce personas, animales y objetos (coches, aves) con mejor precisión que Keyper.
- **M Roto AI (Motion VFX):** No es arrastrar y soltar. Dibujar un garabato ("scribble") sobre el sujeto en el fotograma. Presionar botón "Tracker" y elegir "Track Forward" y "Track Backward". En "Output", cambiar a "Masked Video". Ajustar la máscara con sliders en el inspector. Funciona con cualquier objeto, no solo personas. Es el más laborioso y caro (suscripción).

## Reglas para agentes
- Usa Scene Removal Mask solo cuando el clip tenga al menos un fotograma sin sujeto al inicio o final.
- Nunca uses Keyper para objetos que no sean humanos (perros, coches, aves) porque falla.
- Usa Background Remover (FX Factory) como opción intermedia cuando necesites recortar objetos no humanos sin invertir en M Roto AI.
- Usa M Roto AI cuando necesites la máxima precisión y el sujeto no sea una persona estándar (ej. pájaros, coches entre arbustos).
- Aplica Draw Mask manual como respaldo cuando Keyper o Background Remover fallen en áreas específicas (ej. objetos sostenidos).
- Nunca confíes en Scene Removal Mask para clips de stock o sin planificación previa del fotograma vacío.

## Errores comunes que evita o menciona
- Scene Removal Mask falla si no hay un fotograma de fondo vacío al inicio o final del clip.
- Keyper pierde objetos sostenidos por el sujeto (ej. portapapeles, borla de birrete, brazo de guitarra).
- Scene Removal Mask se confunde con fondos que contienen otras personas en movimiento.
- Keyper no reconoce animales (perros) ni objetos inanimados (coches, aves).
- M Roto AI requiere más trabajo manual (garabatear y trackear) que las opciones de arrastrar y soltar.
- Background Remover puede mostrar artefactos al inicio del clip cuando el sujeto entra en cuadro (ajustar Sensitivity y Contour para corregir).