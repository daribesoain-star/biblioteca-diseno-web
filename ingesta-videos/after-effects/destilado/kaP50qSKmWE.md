# after effects techniques to improve any motiongraphics project
**Fuente:** olly | https://youtu.be/kaP50qSKmWE

## Qué enseña
Tres técnicas de efectos visuales en After Effects para añadir capas de detalle y realismo a animaciones básicas: deformación por impacto con Liquify, sistema reactivo de luz y sombra con Radial Fast Blur y máscaras, y lentes reveladoras con Gaussian Blur y máscaras circulares.

## Técnicas accionables
- **Deformación por impacto (Liquify):**
  - Crear una capa de ajuste (Adjustment Layer) sobre el elemento a deformar.
  - Aplicar efecto **Liquify** (Efecto > Distorsionar > Licuar).
  - Seleccionar la herramienta Pincel (Brush Tool) dentro del efecto, ajustar tamaño y pincel.
  - Animar **Distortion Percentage**: keyframe en 100% en el fotograma exacto del impacto, keyframe en 0% un fotograma antes del impacto, y keyframe en 0% aproximadamente medio segundo después del impacto.
  - Suavizar la curva de velocidad (F9 o Easy Ease) en los keyframes.
  - Copiar esos keyframes para cada rebote. Reducir el porcentaje en cada rebote sucesivo: segundo rebote a 70%, tercer rebote a 20%.

- **Sistema reactivo de luz y sombra (Radial Fast Blur + Brightness + Máscara):**
  - Duplicar la composición del entorno.
  - Sobre la copia, aplicar efecto **Radial Fast Blur** (Efecto > Desenfocar > Desenfoque radial rápido).
  - En el efecto, seleccionar la propiedad **Center** y usar el Pick Whip para enlazarla a la propiedad **Position** del elemento en movimiento (ej. esfera).
  - Aumentar **Amount of Radial Blur** a 90.
  - Aplicar efecto **Fill** (Efecto > Generar > Relleno) sobre la misma capa para darle un color uniforme (ej. azul) → esto crea la sombra.
  - Duplicar la capa del entorno original.
  - Aplicar efecto **Brightness & Contrast** (Efecto > Corrección de color > Brillo y contraste) y subir **Brightness** → esto crea la luz.
  - Crear un sólido (Layer > New > Solid) y dibujar una máscara circular con pluma (Mask Feather) alta para que sea un círculo degradado.
  - Usar ese sólido como **Track Matte** (Alpha Matte) para la capa con brillo.
  - Parentear (Pick Whip) el sólido con la máscara a la posición del elemento en movimiento.

- **Lentes reveladoras (Gaussian Blur + Máscaras + Track Matte invertido):**
  - Crear una capa de ajuste (Adjustment Layer) sobre la composición.
  - Aplicar efecto **Gaussian Blur** (Efecto > Desenfocar > Desenfoque gaussiano) y subir la cantidad de desenfoque.
  - En la capa de ajuste, dibujar una máscara circular (herramienta Elipse Mask).
  - Crear una segunda capa de ajuste (o una forma circular) para el segundo lente.
  - Colocar la segunda capa como **Track Matte** (Alpha Matte) de la primera capa de ajuste.
  - Hacer clic en el icono **Invert Matte** (el icono T invertido junto al Track Matte) para que el desenfoque solo esté fuera del segundo círculo.
  - Animar **Position** y **Scale** de ambos lentes para que se muevan y escalen.
  - Añadir un **Null Object** (Layer > New > Null Object) en el centro de la composición.
  - Animar **Rotation** del Null Object (ej. varias vueltas) y parentear ambos lentes al Null.
  - Desfasar los keyframes entre los dos lentes: seleccionar todos los keyframes del primer lente y moverlos 5-10 fotogramas en la línea de tiempo respecto al segundo.
  - Opcional: aplicar efecto **Drop Shadow** (Efecto > Perspectiva > Sombra paralela) con valores suaves para separar visualmente los lentes.

## Reglas para el erudito (imperativas y verificables)
- Usa Liquify solo en el fotograma exacto del impacto; keyframe en 0% antes y después.
- Reduce el porcentaje de distorsión en cada rebote sucesivo (100% → 70% → 20%) para simular pérdida de energía cinética.
- En Radial Fast Blur, usa el Pick Whip del Center directamente a la propiedad Position del elemento, no a la capa completa.
- Usa un sólido con máscara circular y pluma alta (Mask Feather) como matte para la luz; no uses una forma sólida sin degradado.
- Para las lentes reveladoras, el segundo círculo debe tener el Track Matte en Alpha Matte e Invertido para cancelar el desenfoque del primero.
- Desfasa los keyframes de los dos lentes entre 5 y 10 fotogramas para crear dinamismo.
- Nunca uses valores de Drop Shadow altos en los lentes; mantenlo muy ligero para no opacar el efecto.

## Errores comunes que evita o menciona
- No usar squash and stretch cuando se busca un efecto más sutil y menos caricaturesco; Liquify es una alternativa más realista.
- Olvidar reducir el porcentaje de distorsión en rebotes sucesivos, lo que rompe la ilusión de pérdida de energía.
- No parentear el centro del Radial Fast Blur a la posición del elemento, lo que hace que el desenfoque no siga al objeto en movimiento.
- No invertir el Track Matte en las lentes reveladoras, lo que impide que el segundo círculo cancele el desenfoque del primero.
- No desfasar los keyframes entre los dos lentes, resultando en un movimiento sincronizado y menos dinámico.