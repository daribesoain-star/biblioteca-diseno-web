# Curso de After Effects en español - 🎬 Capítulo 12 - Glowing con Saber
**Fuente:** mundoaudiovisual | https://youtu.be/46lsF9ffQMY

## Qué enseña (2-3 líneas)
Enseña a usar el plugin gratuito **Saber** (de Video Copilot) para crear efectos de luz y brillo (glowing) en After Effects. Muestra cómo aplicar el efecto a máscaras animadas sobre manos y ojos, usando parámetros como **Start Offset**, **Glow Intensity**, **Core Size** y modos de fusión como **Screen**.

## Lecciones accionables
- **Descargar e instalar Saber:** Ve a la descripción del video, descarga el archivo ZIP, descomprímelo y ejecuta el instalador. Sigue los pasos de instalación.
- **Crear un sólido negro:** Ve a *Layer > New > Solid*, elige color negro y haz clic en *OK*.
- **Aplicar el efecto Saber:** Selecciona el sólido, ve a *Window > Effects* (o *Effect > Video Copilot > Saber*). Se aplica automáticamente.
- **Seleccionar preset:** En el panel de efectos, busca el menú desplegable **Preset**. Ejemplos: "Gasoline", "Kryptonite", "Neon".
- **Ajustar brillo:** Parámetro **Glow Intensity** (dentro de Saber) para subir o bajar la intensidad del resplandor.
- **Ajustar parpadeo:** Parámetros **Flicker** (frecuencia de parpadeo) y **Flicker Percentage** (porcentaje de parpadeo).
- **Crear máscara para glow:** Selecciona el sólido negro, usa la herramienta de máscara (atajo `Q` o `Ctrl+Shift+M`) y dibuja la forma deseada (ej: contorno de una mano).
- **Animar máscara con keyframes:** Si el objeto se mueve, activa keyframes en **Mask Path** (clic en el cronómetro) y ajusta los puntos de la máscara fotograma a fotograma.
- **Configurar Custom Core:** En el efecto Saber, cambia **Custom Core** a **Mask Layer** para que el glow siga la máscara.
- **Ajustar Core Size:** Parámetro **Core Size** para hacer el glow más grueso o delgado.
- **Animar Start Offset:** Para que el glow aparezca progresivamente:
  - Pon un keyframe en **Start Offset** con valor **100** (invisible).
  - Avanza en la línea de tiempo y pon otro keyframe con valor **0** (visible).
- **Cambiar modo de fusión:** Selecciona la capa del sólido, ve al menú desplegable **Mode** (junto a la capa) y elige **Screen** (o **Add** si es necesario).
- **Cambiar color del glow:** En el efecto Saber, busca el parámetro **Color** y selecciona el color deseado (ej: verde).
- **Copiar y pegar efecto:** Selecciona la capa con Saber, presiona `Ctrl+C`, selecciona otra capa y presiona `Ctrl+V`.
- **Duplicar capa con glow:** Selecciona la capa, presiona `Ctrl+D`. Luego presiona `P` para mostrar **Position** y ajusta la posición (ej: mover al otro ojo).
- **Sincronizar animaciones:** Si tienes dos glows (ej: ojos), ajusta los keyframes de **Start Offset** para que uno termine cuando el otro comience.

## Reglas para agentes
- Usa **sólido negro** como base para el glow, nunca otro color.
- Aplica el modo de fusión **Screen** (o **Add**) a la capa del glow para que se vea sobre el fondo.
- Cuando uses **Custom Core**, selecciona siempre **Mask Layer** para que el glow respete la máscara.
- Para animar la aparición del glow, usa keyframes en **Start Offset**: empieza en 100 (oculto) y termina en 0 (visible).
- Si el objeto se mueve, anima **Mask Path** con keyframes para que la máscara siga el movimiento.
- Nunca uses Saber directamente sobre una capa de video; siempre aplica el efecto sobre un sólido negro con máscara.

## Errores comunes que evita o menciona
- **No usar sólido negro:** El glow no se verá correctamente si el sólido no es negro.
- **No ajustar el modo de fusión:** Sin **Screen** o **Add**, el glow puede verse opaco o con fondo negro.
- **Máscara no animada:** Si el objeto se mueve y la máscara no tiene keyframes, el glow se desvía.
- **No cambiar Custom Core:** Dejarlo en "Default" hace que el glow no siga la máscara.
- **Exceso de intensidad:** Subir demasiado **Glow Intensity** o **Core Size** puede saturar la imagen y verse poco realista.
- **No sincronizar keyframes:** En glows múltiples (ej: ojos), si los keyframes de **Start Offset** no están alineados, los efectos no aparecen en el momento correcto.