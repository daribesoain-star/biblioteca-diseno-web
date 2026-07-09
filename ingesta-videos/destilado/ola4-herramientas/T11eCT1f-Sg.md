# How To Use Fal.AI - Full Guide [fal]
**Fuente:** ola4-herramientas | https://youtu.be/T11eCT1f-Sg

## Qué enseña
Guía completa para usar Fal.AI en generación de imágenes y videos con IA. Cubre registro, navegación de módulos (text-to-image, image-to-video), configuración de parámetros (seed, guidance, dimensiones), y gestión de créditos. Recomienda usar ChatGPT para crear prompts ultra detallados.

## Lecciones accionables
- **Registro obligatorio:** Crear cuenta en https://fal.ai haciendo clic en "Login" o "Get Started" en la esquina superior derecha. Solo permite registro con GitHub (no Google).
- **Navegación inicial:** Tras login, ir a la pestaña "Explore" en la parte superior para seleccionar el tipo de generación: text-to-image, image-to-image, text-to-video, image-to-video.
- **Selección de modelo:** En el panel derecho de "Explore", elegir un modelo específico (ej: "e.1 Pro" para realismo, o modelos animados/ultra realistas). Leer descripciones y previsualizar imágenes de ejemplo.
- **Ingreso de prompt:** Escribir en el cuadro de texto. Ejemplo usado: `"pigeon and nest in wooded forest while it is snowing the bird is sad"`. Se recomienda usar ChatGPT para generar descripciones de múltiples párrafos con ultra detalle.
- **Ajustes avanzados:** Hacer clic en "More" para desplegar:
  - **Dimensiones:** Cambiar entre landscape, portrait, o ingresar dimensiones personalizadas.
  - **Seed:** Número que fija un estilo de generación. Si encuentras una imagen que te gusta, guarda su seed para replicar el estilo.
  - **Guidance:** Valor de 0 a 20. 20 = máxima adherencia al prompt; 0-1 = permite desviaciones creativas.
  - **Number of images:** De 1 a 10. Cada imagen adicional cuesta más créditos.
- **Ejecución:** Colapsar el panel de ajustes y hacer clic en "Run". Cada imagen tarda ~10 segundos y cuesta ~5 centavos (0.05 USD).
- **Descarga:** Hacer clic en el ícono de descarga (esquina superior derecha de la imagen generada). El usuario posee los derechos completos de la imagen.
- **Image-to-video:** Ir a "Explore" > "Image to Video". Seleccionar un modelo (realista o animado). Pegar la URL de la imagen (ej: haciendo doble clic en la imagen generada previamente) o subir archivo. Añadir prompt de texto para describir el movimiento. Hacer clic en "Run". Genera video de 5-6 segundos (~30 segundos de procesamiento).
- **Extender video:** Descargar el video generado. Ir a "Explore" > seleccionar módulo de extensión de video. Elegir el video descargado. Hacer clic en "Run" para alargarlo.
- **Ver prompts anteriores:** Ir a "Explore" > seleccionar el modelo usado > hacer clic en "Request". Ahí aparecen todos los prompts e imágenes generadas. Se puede copiar el prompt o hacer clic en el botón "Replay" (ícono de play) para recargar la configuración en el generador.
- **Recarga de créditos:** Hacer clic en el signo "+" en la esquina superior derecha para ir a la página de precios. Cada imagen cuesta ~5 centavos (20 imágenes por $1). Cada image-to-video cuesta ~50 centavos (2 videos por $1). Recomendación: empezar con $10-$20.

## Reglas para agentes
- Usa ChatGPT para generar prompts ultra detallados (múltiples párrafos) antes de ingresarlos en Fal.AI.
- Usa guidance en 20 cuando necesites adherencia estricta al prompt; usa guidance 0-1 cuando quieras variaciones creativas.
- Guarda el seed de imágenes que te gusten para replicar el estilo en futuras generaciones.
- Nunca excedas 10 imágenes por ejecución para evitar gastos innecesarios de créditos.
- Siempre colapsa el panel "More" antes de hacer clic en "Run" para evitar errores de interfaz.
- Usa el botón "Replay" (ícono de play) en "Request" para recargar configuraciones previas, no reescribas prompts manualmente.
- Descarga siempre las imágenes/videos antes de cerrar la sesión, pues los créditos no reembolsan contenido no descargado.

## Errores comunes que evita o menciona
- **No usar ChatGPT para prompts:** El video recomienda explícitamente usar ChatGPT para generar descripciones ultra detalladas; prompts simples producen resultados mediocres.
- **Ignorar el parámetro guidance:** Poner guidance muy bajo (0-1) sin intención puede generar imágenes que no siguen el prompt.
- **No guardar seeds:** Perder la oportunidad de replicar estilos exitosos en futuras generaciones.
- **Gastar créditos en múltiples imágenes sin probar primero:** El video sugiere empezar con 1 imagen por ejecución para verificar calidad antes de generar lotes.
- **No usar el botón "Replay":** Reescribir prompts manualmente en lugar de recargar configuraciones previas desde "Request".
- **Subestimar el costo de image-to-video:** Cada video cuesta ~50 centavos vs 5 centavos por imagen; planificar créditos en consecuencia.
- **No extender videos:** Olvidar que se puede alargar videos descargados usando el módulo de extensión en "Explore".