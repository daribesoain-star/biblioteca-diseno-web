# My Top 5 Techniques for Web Animation
**Fuente:** https://youtu.be/9eHEOAn2FOA | destilado 2026-07-22

## Qué enseña (2-3 líneas)
El creador, que trabaja en una agencia web enfocada en animaciones creativas y ha recreado animaciones premiadas durante un año, destila las 5 técnicas de animación web que aparecen en el 80% de los sitios galardonados. Explica el principio de Pareto (80/20) aplicado a animaciones: un puñado de técnicas reutilizables genera la mayoría de los resultados impresionantes.

## Lecciones accionables

- **Scroll tracking (seguimiento de desplazamiento):** Técnica donde se rastrea el progreso del scroll en una porción específica de la página, devolviendo un valor entre 0 y 1 que se transforma en animaciones. Herramientas recomendadas: ScrollTrigger de GSAP y `useScroll` hook de Framer Motion. **Problema crítico:** el scroll nativo del mouse produce saltos (janky). **Solución obligatoria:** implementar smooth scroll con Lenis Scroll o Locomotive Scroll para que las animaciones ligadas al scroll sean fluidas.

- **Viewport detection (detección de viewport):** Técnica donde se detecta cuándo un elemento entra en el viewport para disparar una animación. El creador afirma que "apostaría su vida" a que todo sitio web premiado usa esto. **Implementación:** clásicamente con Intersection Observer API, pero se recomienda usar ScrollTrigger de GSAP o `useInView` hook de Framer Motion (ambos envuelven Intersection Observer internamente). **Regla:** el 50% o más de las animaciones de un sitio se activan al entrar al viewport.

- **Sticky position (posición pegajosa):** Técnica nativa de CSS (`position: sticky`). El creador la califica como "absolutamente OP" (overpowered) por ser fácil de configurar, sin bugs extraños, soportada en todos los navegadores. **Advertencia:** hay que pensar fuera de lo común para usarla sin que sea obvio. Muchas animaciones simplemente no funcionarían o serían buggy sin CSS sticky position.

- **Easing (curvas de aceleración):** No es una técnica tradicional pero se ha vuelto "la parte más importante" para dar sensación y personalidad a un sitio. **Patrón observado:** sitios amateur vs. profesionales se distinguen por el dominio de motion design y easings. **Ejemplos de personalidad:** lento, rápido, con rebote (bouncy). Cada easing define el "vibe" y el "mood" del sitio.

- **Text splitting (división de texto):** Dividir un párrafo en líneas, luego en palabras, luego en caracteres para animar tipografía individualmente. **Herramientas:** módulo SplitText de GSAP o la librería SplitType. **Advertencia crítica:** puede ser "realmente malo para la accesibilidad si no se maneja bien" y puede crear bugs con eventos de resize. **Afirmación:** está presente en "cada sitio web premiado".

- **Bonus: Math.map (función de mapeo matemático):** Transforma un rango de valores en otro rango. **Casos de uso concretos:** convertir el progreso de scroll (0-1) en valores de escala, traslación u opacidad; convertir píxeles de eventos de mouse a coordenadas cartesianas para WebGL. **Disponible en:** vanilla JS, GSAP, Framer Motion (como `useTransform` hook), incluso en CSS.

- **Bonus: Lerp / Linear Interpolation (interpolación lineal):** Usado dentro de `requestAnimationFrame` para crear animaciones suaves. **Casos de uso:** animaciones de cursor/pointer, canvas API, interpolación entre formas, colores. El creador lo describe como "one-liner" que usa constantemente.

- **Bonus: Shader (sombrear):** Técnica para animaciones experimentales, poco usada en sitios comerciales pero común en sitios artísticos y premiados con 3D. **Tipos:** vertex deformation y fragment shaders para "añadir un poco de especia". **Estado actual:** pocas librerías disponibles, "campo abierto" para crear cosas que nadie ha visto antes.

## Reglas para agentes

- Usa smooth scroll (Lenis o Locomotive) SIEMPRE que implementes animaciones ligadas al scroll, porque el scroll nativo del mouse produce saltos que arruinan la fluidez.
- Implementa viewport detection en TODAS las animaciones que deban dispararse al entrar un elemento en pantalla; usa ScrollTrigger de GSAP o `useInView` de Framer Motion, NO el Intersection Observer API directamente.
- Aplica CSS `position: sticky` para animaciones que requieran que un elemento permanezca fijo mientras el contenido se desplaza a su alrededor; es la técnica más estable y compatible.
- Elige easings que definan la personalidad del sitio (lento, rápido, bouncy) y úsalos consistentemente; el dominio de motion design distingue sitios profesionales de amateurs.
- Usa text splitting (SplitText de GSAP o SplitType) para animar tipografía a nivel de caracteres, palabras o líneas, pero NUNCA sin implementar manejo de accesibilidad y eventos de resize.
- Aplica Math.map para transformar rangos de valores (scroll progress, coordenadas de mouse) en valores de animación (escala, opacidad, posición); está disponible en GSAP, Framer Motion y vanilla JS.
- Usa lerp dentro de `requestAnimationFrame` para animaciones continuas como cursores o canvas; es un one-liner que garantiza suavidad.
- Reserva shaders para sitios artísticos o experimentales donde se busque originalidad absoluta; no los uses en sitios comerciales estándar.

## Errores comunes

- Vincular animaciones al scroll nativo sin smooth scroll, produciendo animaciones entrecortadas (janky) que se sienten amateur.
- No implementar viewport detection, haciendo que animaciones se disparen antes o después de que el elemento sea visible.
- Usar Intersection Observer API directamente en lugar de librerías como GSAP o Framer Motion que lo envuelven y añaden funcionalidades.
- Ignorar la accesibilidad al hacer text splitting, creando contenido ilegible para lectores de pantalla.
- No manejar eventos de resize en text splitting, causando bugs cuando cambia el tamaño de ventana.
- Usar easings genéricos o predeterminados sin considerar la personalidad y el "vibe" que quieren transmitir.
- Aplicar shaders en sitios donde la complejidad no justifica el costo de rendimiento y desarrollo.