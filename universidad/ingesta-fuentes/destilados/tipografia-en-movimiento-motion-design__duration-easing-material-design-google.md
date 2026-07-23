# Duration & Easing — Material Design (Google)
**Materia:** tipografia-en-movimiento-motion-design | **Fuente:** https://m1.material.io/motion/duration-easing.html (consultada 2026-07-07)
## Qué aporta
Proporciona un sistema completo de duraciones y curvas de easing para interfaces, con valores específicos por plataforma (móvil, tablet, wearable, escritorio). Define cuatro curvas de aceleración estándar con sus implementaciones en CSS, Android, iOS y After Effects, y establece patrones de duración dinámica según distancia recorrida y tipo de transición.

## Reglas candidatas para agentes
1. USA duración de 300ms como valor base para transiciones en móvil, con variaciones: 375ms para transiciones grandes/complejas de pantalla completa, 225ms para elementos entrando en pantalla, 195ms para elementos saliendo de pantalla.
2. NO EXCEDAS 400ms en ninguna transición móvil, pues resulta demasiado lenta.
3. INCREMENTA la duración en tablet un 30% respecto a móvil (ej: 300ms móvil → 390ms tablet).
4. REDUCE la duración en wearable un 30% respecto a móvil (ej: 300ms móvil → 210ms wearable).
5. USA duraciones de 150ms a 200ms para animaciones en escritorio.
6. USA la curva estándar (cubic-bezier(0.4, 0.0, 0.2, 1)) para movimiento dentro de los límites de la pantalla, crecimiento y encogimiento de material.
7. USA la curva de desaceleración (cubic-bezier(0.0, 0.0, 0.2, 1)) para elementos entrando en pantalla desde velocidad máxima.
8. USA la curva de aceleración (cubic-bezier(0.4, 0.0, 1, 1)) para elementos saliendo de pantalla, sin desaceleración al salir.
9. USA la curva sharp (cubic-bezier(0.4, 0.0, 0.6, 1)) para elementos que salen de pantalla pero pueden regresar en cualquier momento.
10. AJUSTA la duración dinámicamente: usa duraciones más largas para objetos que recorren grandes distancias o tienen cambios drásticos de área superficial; usa duraciones más cortas para distancias cortas o cambios menores de área.
11. USA duraciones más cortas para objetos que salen de pantalla, pues requieren menos atención.

## Errores comunes que documenta
- Animar lentamente, lo que crea lag innecesario para el usuario.
- Usar una única duración para todas las animaciones en lugar de ajustarla dinámicamente.
- En escritorio, usar transiciones complejas sin aceleración GPU que resultan en frames caídos; la solución es usar duraciones más cortas (150-200ms).
- Movimiento mecánico por no tener aceleración y desaceleración suaves y asimétricas a lo largo de la duración.

## Datos/citas clave textuales
- "Transitions on mobile typically occur over 300ms"
- "Large, complex, full-screen transitions may have longer durations, occurring over 375ms"
- "Elements entering the screen occur over 225ms"
- "Elements leaving the screen occur over 195ms"
- "Transitions that exceed 400ms may feel too slow"
- "Durations on tablet should be about 30% longer than on mobile. For example, a 300ms mobile duration would increase to 390ms on tablet"
- "Durations on wearables should be about 30% shorter than those on mobile. For example, a 300ms mobile duration would be 210ms on wearables"
- "Desktop animations should be faster and simpler than their mobile counterparts. These animations should last 150ms to 200ms"
- Curva estándar CSS: `cubic-bezier(0.4, 0.0, 0.2, 1)`
- Curva de desaceleración CSS: `cubic-bezier(0.0, 0.0, 0.2, 1)`
- Curva de aceleración CSS: `cubic-bezier(0.4, 0.0, 1, 1)`
- Curva sharp CSS: `cubic-bezier(0.4, 0.0, 0.6, 1)`
- "Motion appears more natural and delightful when acceleration and deceleration occur asymmetrically"
- "Acceleration and deceleration changes should be smooth across the duration of an animation so that movement doesn't appear mechanical"