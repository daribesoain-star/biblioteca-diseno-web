# The Only 5 Web Design Skills That Actually Matter (2026)
**Fuente:** https://youtu.be/vbFn0C-pvis | destilado 2026-07-22

## Qué enseña (2-3 líneas)
El video destila 10 años de experiencia en diseño web en solo cinco habilidades esenciales que separan a los diseñadores del 1% superior del resto. Cubre tipografía, layout, color, código básico y diseño orientado a conversión, con sistemas y reglas concretas para implementar de inmediato.

## Lecciones accionables

- **Tipografía – Cómo elegir fuentes:** No uses las fuentes gratuitas de siempre (Google Fonts sobreexpuestas). Busca en **fontshare.com** (limpias, calidad alta, 100% gratis) y **uncut.wtf** (más experimentales, gratuitas). El creador comparte una lista en la descripción del video con fuentes "chef's kiss" que ha encontrado.
- **Tipografía – Sistema de escalas (type scale):** Usa una **Major Third Scale** (escala mayor tercera): cada nivel de heading escala ~25% respecto al anterior. Base: 16px para párrafos → H6: 20px, H5: 25px, etc. No calcules manualmente: usa valores **REM** en lugar de píxeles. Herramienta directa: **typescale.net** – eliges base, ratio y genera todo el sistema en 2 minutos.
- **Tipografía – Letter spacing y line height:** En body text NO toques el letter spacing (déjalo por defecto para legibilidad). En headings, **aprieta el letter spacing** a medida que crecen. Para line height de párrafos: **150% del font size** (16px × 1.5 = 24px). En headings, reduce el line height para hacerlos más impactantes y escaneables.
- **Layout – Sistema de rejilla (grid):** Usa **12 columnas en desktop, 8 en tablet, 4 en móvil**. La flexibilidad permite dividir en 2 columnas (6+6), 3 columnas (4+4+4) o 4 columnas (3+3+3+3). En Figma: selecciona frame → Layout grid → "+" → Grid → Columns → elige número.
- **Layout – Sistema de espaciado de 8 puntos (8-point grid):** Todo espaciado debe ser múltiplo de 8: 8, 16, 24, 32, 48, 64px. Lo usan **Google (Material Design)** y **Apple**. En Figma: mismo proceso que grid pero seleccionas "Grid" y cambias tamaño a 8 (o 16, etc.).
- **Layout – Jerarquía visual (4 principios):** (1) **Proximidad** – elementos relacionados juntos. (2) **Tamaño** – lo más importante, más grande. (3) **Contraste** – usa peso, tamaño o color para destacar; ejemplo: opacidad reducida en headers vs body text para señalar importancia. (4) **Alineación** – líneas limpias = estructura clara.
- **Color – Regla 60-30-10:** 60% colores neutros (blancos, negros, fondos y texto). 30% colores secundarios (fondos de cards, headers, visuales). 10% color de acento (botones, CTAs, elementos que deben resaltar). No necesitas más de 2-3 colores por proyecto.
- **Color – Usa opacidad en lugar de añadir colores:** Toma tu color primario y crea variaciones bajando la opacidad. Ejemplo: amarillo primario con distintas opacidades para capas. Aprendido de **Google Material Design** – un buen color usado bien vence a cinco colores aleatorios.
- **Color – Contraste obligatorio:** Texto grande necesita ratio de contraste **3:1** mínimo; texto pequeño **4.5:1** mínimo. En Figma: selecciona texto → Fill → icono de contraste (esquina superior derecha) – te dice si pasa o no.
- **Color – Roba paletas existentes:** Usa **CSS Overview** en Chrome DevTools (3 puntos → More tools → CSS Overview → Capture). Te da todos los colores, fuentes, tamaños y sistema de escalas de cualquier sitio web.
- **Código – Lo mínimo indispensable:** HTML (estructura), CSS (estilo), JavaScript (interacción). Si trabajas con WordPress: PHP básico. Aprende con cursos gratuitos en **Codecademy** y luego aprende "por proyecto" cuando lo necesites.
- **Código – Técnica del 80% + "vibe coding":** Encuentra soluciones que estén al 80% (CodePen, snippets, ChatGPT) y luego ajústalas. Ejemplo real: un amigo no desarrollador personalizó un plugin WooCommerce para checkout customizado en WordPress.
- **Conversión – Una página = un objetivo:** Cada página debe tener UN solo objetivo: comprar, agendar llamada, descargar lead magnet. Si intentas hacer demasiado, pierdes usuarios.
- **Conversión – CTAs estratégicos:** CTA visible en: (1) hero section, (2) navegación, (3) cada 2-3 secciones al hacer scroll. Debe ser visible en segundos de llegar a la página.
- **Conversión – Confianza + claridad + emociones:** Las personas compran de marcas que **conocen, gustan, confían Y SIENTEN algo**. Usa testimonios, reseñas y prueba social para mostrar que no están solos.

## Reglas para agentes

- Usa la **regla 60-30-10** para toda paleta de color: 60% neutros, 30% secundarios, 10% acento.
- Aplica el **8-point grid system** para todo espaciado: márgenes, paddings, gaps entre elementos – siempre múltiplos de 8.
- Implementa una **Major Third Scale** para tamaños de fuente: cada nivel de heading escala ~25% del anterior.
- Pon **line height al 150%** del font size en body text; redúcelo en headings.
- No toques el **letter spacing** en body text; apriétalo ligeramente en headings grandes.
- Usa **12 columnas en desktop, 8 en tablet, 4 en móvil** como estructura base de layout.
- Cada página debe tener **exactamente un objetivo de conversión** – no más.
- Coloca **CTA visible en hero, navegación y cada 2-3 secciones** de scroll.
- Verifica **contraste mínimo 4.5:1** en texto pequeño y **3:1** en texto grande – usa el checker de Figma.
- Cuando necesites código, busca soluciones **al 80%** (CodePen, ChatGPT) y ajústalas – no construyas desde cero.
- Para inspirarte, **roba paletas con CSS Overview** de Chrome DevTools – no inventes desde cero.

## Errores comunes

- Usar las mismas fuentes gratuitas de siempre (Google Fonts sobreexpuestas) – hace que los diseños se mezclen en lugar de destacar.
- "Ojear" la tipografía en lugar de usar un sistema de escalas – el texto se siente aleatorio, no intencional.
- No verificar contraste de color – el diseño puede verse bonito pero ser ilegible.
- Usar demasiados colores en lugar de usar opacidad para crear variaciones de un mismo color.
- Diseñar para que se vea bien ignorando el viaje del usuario – el caso real del creador: rediseñó un sitio que se veía increíble pero las ventas se desplomaron.
- Intentar que una página haga demasiadas cosas (vender, informar, capturar leads) – pierde usuarios por saturación.
- No incluir CTAs visibles en los primeros segundos – si el usuario no sabe qué hacer, se va.
- Pensar que hay que aprender a programar como full-stack – solo necesitas HTML, CSS, JS básico y la técnica del 80% + ajuste.