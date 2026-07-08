# 20 More Things You Didn't Know Final Cut Could Do
**Fuente:** jennjagerpro | https://youtu.be/cNpuIlPI9EY
## Qué enseña (2-3 líneas)
Colección de 20 funciones avanzadas y atajos ocultos en Final Cut Pro, desde corrección de color en el navegador hasta personalización del inspector, transiciones con ajustes de look, capítulos exportables a QuickTime, y técnicas de edición de audio y video para flujos de trabajo más rápidos y precisos.

## Lecciones accionables
- **Corregir color en el navegador:** Selecciona un clip en el navegador → menú `Clip` → `Open Clip` → se abre en su propia línea de tiempo → aplica ajustes de color/grado → flecha hacia atrás para volver a la línea de tiempo principal → el clip ya aparece corregido en el navegador.
- **Ordenar eventos en la barra lateral:** Menú `View` → elige `Sort Events By` → `Date Created` o `Name`.
- **Workaround para corregir color multicámara:** Menú `Window` → `Show in Workspace` → `Event Viewer` → cambia la vista del Event Browser de "raw media" a `Video Scopes` → reajusta los marcos para maximizar los scopes (el viewer principal muestra el timeline, el Event Viewer muestra los scopes).
- **Ver overlays personalizados en el Event Viewer:** Activa `Event Viewer` → muestra overlays personalizados (enlace a video con overlays gratis en el sitio de la autora).
- **Títulos responsivos para 16:9 y vertical:** Usa la categoría `Social Titles` (nativa de FCP) → al duplicar proyecto y convertir a vertical con `Smart Conform`, el título se reconforma automáticamente sin necesidad de ajustes manuales.
- **Gradiente rápido para cielo gris:** Ve a `Generators` → `Textures` → `Gradient` → en el inspector del generador: primer color = color deseado para el cielo, segundo color = blanco puro → en `Video Inspector` → cambia `Blend Mode` de `Normal` a `Multiply` → ajusta posición con controles en pantalla.
- **Ver área perimetral de un clip escalado:** Selecciona el clip → activa `Transform Tool` → haz clic en el botón de "mostrar área completa" → aleja el zoom para ver cuánto espacio alrededor del clip está disponible para keyframing.
- **Extender el inspector a toda la UI:** Haz doble clic en la parte superior del panel `Inspector` → se expande al largo completo de la interfaz.
- **Zoom en el espectro del Keyer (Green Screen):** En el inspector del efecto `Green Screen Keyer` → mantén presionada la tecla `Z` y haz clic repetidamente en el espectro cromático para acercarte y hacer ajustes más precisos.
- **Aumentar saturación más allá del límite de los diales:** En `Color Wheels` → expande todos los sliders en el inspector → haz clic en el valor numérico (ej. "2") → mantén presionado el botón del mouse y empuja hacia adelante → puedes llegar hasta 10 (en lugar de usar solo el dial).
- **Personalizar el Info Inspector:** En el `Info Inspector` → arrastra cualquier campo de metadatos hacia arriba o abajo para reordenarlo → el cambio persiste en todas las librerías.
- **Cross dissolve con looks y ease:** Selecciona un cross dissolve en la línea de tiempo → en el inspector, bajo `Looks`, elige entre opciones como `Sharp` → cambia `Ease` a `Out` → ajusta el valor de ease al máximo para ver la diferencia.
- **Agregar capítulos exportables a QuickTime:** Presiona `M` dos veces → selecciona `Chapter` como tipo de marcador → agrega varios → al exportar: en `Settings` → marca `Include Chapter Markers` → exporta como archivo QuickTime → al abrir en QuickTime, aparecen flechas dobles en la barra del reproductor → `Chapters` → saltar a cualquier capítulo.
- **Cambiar punto de edición en Blade Speed:** Aplica `Blade Speed` (Shift+B) → ajusta la velocidad arrastrando la barra gris → haz doble clic en la barra negra del marcador de velocidad → edita el `Source Frame` para cambiar el punto de edición.
- **Conectar clip con back-timing:** Selecciona clip en el navegador → presiona `Shift+Q` → el clip se conecta a la línea de tiempo principal terminando justo en la posición del playhead.
- **Bajar tercio (lower third) con atajos:** Presiona `Control+Shift+T` → se conecta un título de tercio inferior a la línea de tiempo principal → al activar `Safe Zones`, el título se posiciona automáticamente dentro del límite de título seguro.
- **Ver keyframes de audio:** Selecciona clip → presiona `Control+A` → se expande la animación de audio mostrando los keyframes de efectos de audio aplicados.
- **Match Audio para corregir pistas regrabadas:** Selecciona el clip con el audio nuevo → menú `Modify` → `Match Audio` → selecciona el clip de la grabación original → `Apply Match` → en el `Audio Inspector`, bajo `Equalization`, se activa `Match` → haz clic en el ícono para ver las curvas EQ aplicadas.
- **Ajuste preciso de valores numéricos en inspector:** Haz clic en un número y arrastra el mouse hacia adelante/atrás → mantén `Option` para movimiento lento (1% a 1%) → mantén `Shift` para movimiento rápido.
- **Tile Window para ver otra app simultáneamente:** Menú `Window` → `Tile Window to Left/Right of Screen` → selecciona la ventana secundaria (ej. Slack) → se ajusta al lado de Final Cut.

## Reglas para agentes
- Usa `Open Clip` desde el menú `Clip` cuando necesites corregir color de un clip antes de llevarlo a la línea de tiempo principal.
- Usa `Social Titles` en lugar de títulos estándar cuando trabajes con proyectos que se convertirán a formato vertical (9:16) con Smart Conform.
- Usa `Textures > Gradient` con blend mode `Multiply` para añadir gradientes de color a cielos, en lugar de crear un sólido con máscara graduada.
- Usa `Z` para zoom en el espectro del Keyer cuando necesites precisión en la selección de color.
- Usa los sliders numéricos expandidos en lugar de los diales de `Color Wheels` para tener mayor rango de saturación (hasta 10).
- Usa `Shift+Q` para conectar clips con back-timing (que terminen en el playhead) cuando necesites precisión en el punto final.
- Usa `Control+Shift+T` para insertar lower thirds automáticamente alineados con los safe zones.
- Usa `Control+A` para visualizar y editar keyframes de efectos de audio en un clip.
- Usa `Modify > Match Audio` cuando necesites igualar el sonido de una grabación posterior a la original (misma sala, micrófono movido).
- Usa `Option` + arrastre de valores numéricos para ajustes precisos (1% a 1%) en el inspector.
- Nunca uses los diales de `Color Wheels` como límite máximo de saturación; expande los sliders y arrastra el número más allá del valor visible.
- Nunca asumas que los títulos estándar se reconformarán correctamente al cambiar de 16:9 a vertical; usa `Social Titles` para responsividad automática.

## Errores comunes que evita o menciona
- **No poder ver ángulos y scopes simultáneamente en multicámara:** FCP no permite tener ambas vistas en el viewer al mismo tiempo; el workaround es usar el `Event Viewer` configurado para mostrar `Video Scopes` mientras el viewer principal muestra el timeline.
- **Títulos que se encogen al convertir a vertical:** Los títulos estándar no son responsivos; usar `Social Titles` evita tener que reajustar manualmente.
- **Pensar que la saturación máxima en los diales de Color Wheels es el límite:** Los sliders numéricos permiten llegar hasta 10, mucho más allá del tope del dial.
- **No saber que se puede cambiar el punto de edición en Blade Speed:** Doble clic en la barra negra permite modificar el `Source Frame` del corte de velocidad.
- **No incluir capítulos al exportar:** Si no se marca `Include Chapter Markers` en la configuración de exportación, los capítulos no aparecen en QuickTime.
- **Desajuste de audio entre tomas regrabadas:** Usar `Match Audio` corrige diferencias tonales y de ecualización sin necesidad de reconfigurar el micrófono.