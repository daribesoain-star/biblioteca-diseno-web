# Make Your Own LUTs for Final Cut Pro 
**Fuente:** jennjagerpro | https://youtu.be/AYc3C1pHiIg

## Qué enseña (2-3 líneas)
Cómo crear LUTs personalizados usando Pixelmator Pro y aplicarlos en Final Cut Pro. Muestra el flujo de trabajo completo: importar un clip de video a Pixelmator Pro, aplicar ajustes de color, exportar como LUT, y luego cargarlo en Final Cut Pro para mantener una apariencia uniforme entre tomas.

## Lecciones accionables
- Arrastra un archivo de video directamente al ícono de Pixelmator Pro para abrirlo con las dimensiones exactas del clip.
- Agrega una capa de ajuste de color (**Color Adjustments Layer**) sobre el video para acceder a todas las herramientas de color en el panel derecho.
- Para exportar el LUT: ve al botón en la parte superior de las herramientas de color, desactiva **Texture Aware Algorithm** (no se puede usar al crear LUTs), desactiva efectos como **Film Grain** (no se exportan con el LUT), y selecciona **Export Adjustments as LUT**.
- Nombra el LUT (ej. "rainy days") y expórtalo.
- En Final Cut Pro: selecciona el clip, ve al **Effects Browser** > **Color** > **Custom LUT**, arrastra el efecto al clip.
- En el inspector, elige **Choose Custom LUTs**, selecciona el archivo exportado y haz clic en **Open**.
- Ajusta el **Mix** del LUT en el inspector si es necesario.
- Arrastra los ajustes de color adicionales (en el inspector de video) **encima** del efecto Custom LUT en la pila de efectos.
- Para aplicar a otros clips: selecciona ambos efectos (Custom LUT + ajustes de color) y arrástralos a los siguientes clips, luego ajusta finamente.

## Reglas para agentes
- Usa Pixelmator Pro para crear LUTs personalizados cuando necesites una apariencia uniforme entre tomas de un proyecto.
- Desactiva **Texture Aware Algorithm** antes de exportar un LUT.
- Nunca incluyas **Film Grain** u otros efectos de capa en el LUT; agrégalos por separado en Final Cut Pro.
- En Final Cut Pro, coloca siempre los ajustes de color adicionales **por encima** del efecto Custom LUT en la pila de efectos.
- Importa el LUT a Final Cut Pro usando **Choose Custom LUTs** desde el inspector del efecto Custom LUT.

## Errores comunes que evita o menciona
- No usar la vista previa en tiempo real de Pixelmator Pro para ver cómo los ajustes afectan el clip, lo que lleva a aplicar LUTs a ciegas en Final Cut Pro.
- Olvidar desactivar **Texture Aware Algorithm** al exportar el LUT, lo que impide la creación correcta.
- Incluir efectos como **Film Grain** en el LUT, ya que no se exportan y se pierden.
- Colocar los ajustes de color debajo del LUT en Final Cut Pro, en lugar de encima, lo que altera el resultado final.