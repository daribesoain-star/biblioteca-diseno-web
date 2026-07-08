# Curso de Corrección de Color - - Davinci Resolve - 🎬 Capítulo 5 - Los Círculos Cromáticos.
**Fuente:** mundoaudiovisual | https://youtu.be/NuCAUjmlEHg

## Qué enseña (2-3 líneas)
Este capítulo explica el uso de los **círculos cromáticos primarios** en DaVinci Resolve para corrección de color en perfiles logarítmicos. Cubre el ajuste de sombras, medios tonos, altas luces, realce de color, balance de blancos con el cuentagotas, y el control fino de luminancia mediante la rueda del ratón.

## Lecciones accionables
- **Ajustar sombras:** En el panel "Correcciones primarias" > "Ruedas de color", arrastra el círculo de **Sombras** (izquierda) para cambiar el tono en las zonas oscuras. Ejemplo: mover hacia rojos o azules para teñir sombras.
- **Ajustar medios tonos y altas luces:** Usa los círculos de **Medios tonos** (centro) y **Altas luces** (derecha) para modificar el color en esas gamas. Ejemplo: mover altas luces hacia azules y sombras hacia naranjas para crear contraste sutil.
- **Controlar luminancia:** Pasa el ratón sobre la barra de luminancia debajo de cada círculo y **gira la rueda del ratón** para ajustar la luminancia de sombras, medios tonos o altas luces de forma más sutil y suave.
- **Resetear un círculo:** Haz **doble clic** sobre el círculo para devolverlo al centro y anular su ajuste.
- **Aplicar realce de color:** Usa el control deslizante **"Realce de color"** (Color Boost) para aumentar la saturación de forma efectiva en perfiles logarítmicos (Log).
- **Balance de blancos con cuentagotas:** En los círculos, haz clic en el **cuentagotas** (pequeña cruz) y púlsalo sobre un área que **debería ser negra** (punto negro) o **blanca** (punto blanco) para corregir automáticamente el balance de color y el contraste.
- **Ajustar contraste básico:** Baja las sombras y sube las altas luces usando los círculos o las barras para añadir contraste a un perfil Log.
- **Ajustar saturación global:** Usa el control deslizante de **Saturación** (Saturation) en el mismo panel para modificar la intensidad del color general.
- **Ajustar tono global:** Usa el control deslizante **"Tono"** (Hue) para cambiar el tono de todos los objetos en la imagen.
- **Resetear todos los movimientos:** Haz clic en el botón de **reset** (flecha circular) dentro del panel de círculos para volver al estado inicial del nodo.
- **Trabajar con barras:** Alterna entre círculos y **barras** (botón en la parte superior del panel) para realizar los mismos ajustes de forma lineal.

## Reglas para agentes
- Usa **doble clic** sobre un círculo cromático para resetear solo ese ajuste.
- Usa la **rueda del ratón** sobre la barra de luminancia para ajustes finos de brillo en sombras, medios tonos o altas luces.
- Usa **"Realce de color"** como primera opción de saturación en clips con perfil logarítmico (Log).
- Usa el **cuentagotas** para balance de blancos: primero sobre un punto negro, luego sobre un punto blanco.
- Nunca arrastres directamente el círculo para cambiar luminancia; usa la barra inferior o la rueda del ratón.
- Nunca olvides resetear el nodo (borrar o resetear) antes de aplicar nuevos ajustes si quieres partir de cero.

## Errores comunes que evita o menciona
- **Mover sombras sin control:** Al mover sombras hacia un color (ej. rojos), también se afectan ligeramente otras zonas; hay que observar el waveform para ver el impacto real.
- **Perder información del cielo:** En clips con cielo sobreexpuesto, no se puede recuperar el color original; se recomienda usar máscaras (visto en capítulos posteriores) para forzar un tono deseado.
- **Ajustar saturación con controles genéricos en Log:** El realce de color es más efectivo que la saturación estándar para perfiles logarítmicos.
- **No usar el cuentagotas correctamente:** Señalar un punto que no es realmente negro o blanco produce una corrección incorrecta.