# 6 Background Remover Ideas for Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/t6G4TlmGiZ0

## Qué enseña (2-3 líneas)
Seis usos creativos y prácticos del plugin Keeper de FX Factory para Final Cut Pro, que permite recortar sujetos del fondo sin pantalla verde. Incluye técnicas como añadir efectos de impacto, crear contornos, corregir tono de piel, revelar títulos, desaturar fondos y combinar con efectos de cómic.

## Lecciones accionables
- **Efecto de impacto en deportes:** Duplica el clip (Option + arrastrar). Aplica Keeper al clip superior. En Inspector: cambia *Quality* a *High*, ajusta *Thickness*. En el clip inferior, corta 4 fotogramas en el momento del impacto (Command + B). Aplica *Prism* (Effects > Blur > Prism) solo a esa sección. Keyframe *Amount*: 0 → subir a máximo 2 fotogramas después → bajar a 0 2 fotogramas después.
- **Contorno de sujeto:** Crea 3 copias del clip. Aplica Keeper a la copia superior y a la central. Deshabilita la superior. En la central: Effects > Color > *Colorize*. Remapea *Blacks* a *White* y *Whites* a *White*. Sube *Intensity* al máximo. En Keeper de esa capa: sube *Thicken* al máximo y *Dilation* a 10. Habilita la capa superior. Ajusta *Quality* a *High* y *Thicken* para refinar.
- **Corrección de tono de piel:** Duplica el clip. Aplica Keeper al superior. Deshabilita el inferior. Selecciona el clip con Keeper, usa *Crop* para aislar la piel (ej. sección del cuello). Abre *Scopes* y verifica la línea indicadora de piel. Ajusta con un plugin de balance de blancos (ej. *White Balance plug-in*). Restablece el crop. Compara deshabilitando/habilitando la capa superior.
- **Revelar título detrás del sujeto:** Coloca un título conectado sobre el clip. Duplica el clip de video. Aplica Keeper al clip duplicado. El título aparecerá detrás del sujeto al moverse la cámara.
- **Desaturar fondo para enfocar sujetos:** Duplica el clip. Coloca el playhead al final del fotograma donde todos los sujetos sean visibles (ej. en un zoom out, al final). Aplica Keeper al clip superior. Habilita el clip inferior. Usa un plugin de balance de blancos para bajar *Saturation* a 0 en el clip inferior.
- **Efecto "Reverse Roger Rabbit" (acción real + fondo cartoon):** Duplica el clip. Aplica Keeper al superior. Cambia *Quality* a *High*. Habilita el clip inferior. Aplica *Comic Basic* effect (nativo de Final Cut) al clip inferior. Opcional: apila dos *Comic Basic* para más intensidad. Para más efecto: añade texto 3D, aplícale *Comic Basic*, motion-trackéalo a la escena, agrupa en compound clip y aplica blade speed.

## Reglas para agentes
- Usa *Quality* = *High* en Keeper cuando necesites un recorte más limpio y definido.
- Aplica Keeper siempre en el clip superior de una pila duplicada para aislar al sujeto del fondo.
- Nunca uses Keeper para contornos en sujetos con pelo rizado o difuso; solo en líneas limpias y alto contraste con el fondo.
- Ajusta *Thicken* y *Dilation* progresivamente al crear contornos; empieza con *Thicken* al máximo y *Dilation* a 10.
- Para fondos desaturados, coloca el playhead al final del fotograma donde todos los sujetos sean visibles antes de aplicar Keeper.
- Al corregir tono de piel, aísla primero con Crop una sección representativa de piel y verifica con Scopes antes de ajustar.

## Errores comunes que evita o menciona
- El efecto nativo *Scene Background Removal* de Final Cut Pro requiere que los sujetos entren en cuadro para funcionar; Keeper no tiene esa limitación.
- No aplicar Keeper a sujetos con pelo rizado o difuso para contornos; el resultado no será limpio.
- No olvidar ajustar *Quality* a *High* y *Thicken* al crear contornos sólidos; de lo contrario el borde se ve irregular.
- No usar color mask para corregir tono de piel si hay mucha variación de iluminación; Keeper permite aislar la piel y corregirla sin máscaras complejas.
- No aplicar Keeper sin antes posicionar el playhead en el fotograma adecuado (ej. final del zoom out) para capturar sujetos completos (hasta los tobillos).