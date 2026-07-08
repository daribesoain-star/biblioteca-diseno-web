# Stop Letting Final Cut Ruin Your Footage! 
**Fuente:** jennjagerpro | https://youtu.be/4JraTOBBMT0

## Qué enseña (2-3 líneas)
Explica por qué dejar que Final Cut Pro aplique automáticamente LUTs correctivos al importar metraje log es un error, y muestra el flujo de trabajo manual correcto para aplicar LUTs correctivos y creativos. También enseña cómo apilar efectos de color y crear presets personalizados para mantener el orden adecuado en el inspector.

## Lecciones accionables
- **Desactivar LUT automático:** Al importar, ve al inspector de información, cambia de "Básico" a "Extendido", localiza "Camera LUT" y selecciona "ninguno" para desactivar la corrección automática.
- **Aplicar LUT correctivo manualmente:** Arrastra el efecto "Custom LUT" (Effects Browser > Color) al clip en la línea de tiempo. En el inspector de video, bajo "LUT", selecciona "Choose Custom LUT" e importa el LUT correctivo de tu cámara (ej. Apple Log) desde el archivo descargado.
- **Obtener LUTs correctivos:** Busca en línea la marca y modelo de tu cámara; el fabricante debe tener LUTs correctivos descargables. Para Apple Log, descárgalo del sitio web de desarrolladores de Apple.
- **Aplicar LUT creativo:** Añade un segundo efecto "Custom LUT" al mismo clip. Arrástralo en el inspector para que quede **arriba** del LUT correctivo (el orden correcto es: Color Adjustments arriba, luego Creative LUT, luego Corrective LUT abajo).
- **Ajustar mezcla (Mix):** Usa el control deslizante "Mix" en cada efecto Custom LUT para reducir la intensidad y lograr un look realista sin sobresaturar.
- **Añadir contraste con Color Adjustments:** Arrastra el efecto "Color Adjustments" (nativo de Final Cut) al clip y colócalo en la parte superior del inspector. Ajusta solo las exposiciones (no los tonos de color) mientras vigilas los scopes.
- **Añadir grano de película (opcional):** Ve a la categoría "Stylized", selecciona "Film Grain", colócalo arriba en el inspector, cambia el estilo de "iMovie" a "Realistic" y reduce la cantidad de grano hasta que se vea natural.
- **Crear preset personalizado:** Aplica dos efectos "Custom LUT" y un "Color Adjustments" a un clip. Ordena: Color Adjustments arriba, Creative LUT, Corrective LUT abajo. Sin configurar nada, haz clic en "Save Effects Preset" para reutilizar la pila con un solo clic.
- **Previsualizar LUTs con M LUTs (recomendado):** Descarga el efecto gratuito "mLUT" de Motion VFX. Permite importar y previsualizar LUTs en una ventana emergente antes de aplicarlos.
- **Eliminar LUTs malos:** Si un LUT no funciona, revélalo en Finder desde Final Cut y elimínalo directamente para no acumular LUTs inútiles (Final Cut no tiene buen sistema de gestión de LUTs).

## Reglas para agentes
- Usa "Custom LUT" manualmente en lugar de dejar que Final Cut aplique LUTs automáticamente al importar.
- Siempre coloca "Color Adjustments" en la parte superior del inspector, luego el LUT creativo, y el LUT correctivo abajo.
- Nunca apliques un LUT creativo sin haber aplicado primero un LUT correctivo manual.
- Cuando uses "Film Grain", cambia el estilo de "iMovie" a "Realistic" antes de ajustar la cantidad.
- Si previsualizas LUTs creativos, reduce el "Mix" al 50% o menos para evaluar el look sin saturación excesiva.
- Al crear un preset, no configures ningún LUT ni ajuste; solo guarda la estructura de efectos vacía.
- Después de aplicar LUTs, aléjate del proyecto unos minutos y revisa con ojos frescos para evitar looks demasiado estilizados.

## Errores comunes que evita o menciona
- **Dejar que Final Cut aplique LUTs automáticamente al importar:** Produce un look diferente y menos controlable que aplicar el mismo LUT manualmente con el efecto "Custom LUT".
- **Orden incorrecto de efectos en el inspector:** Poner el LUT creativo debajo del correctivo (debe ir arriba). Poner "Color Adjustments" debajo de los LUTs (debe ir arriba).
- **Usar LUTs creativos a máxima intensidad (Mix al 100%):** Hace que el video se vea extremadamente afectado y poco natural; hay que reducir el mix.
- **Acumular LUTs malos en Final Cut:** El programa no tiene buen sistema de gestión, por lo que hay que eliminar los que no funcionan directamente desde Finder.
- **Juzgar un look estilizado viendo solo un clip aislado:** Puede parecer exagerado, pero en secuencia con otros clips del mismo estilo se ve cohesivo.