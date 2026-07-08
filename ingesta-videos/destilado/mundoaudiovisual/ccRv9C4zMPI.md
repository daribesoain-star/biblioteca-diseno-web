# 3D Course in Davinci Resolve: IMPORT FREE 3D MODELS INTO YOUR PROJECT
**Fuente:** mundoaudiovisual | https://youtu.be/ccRv9C4zMPI

## Qué enseña
Cómo descargar modelos 3D gratuitos desde internet (formato FBX con texturas) e importarlos a un entorno 3D en Fusion dentro de DaVinci Resolve. Muestra el proceso de integración, escalado y posicionamiento del objeto importado en una escena 3D existente.

## Lecciones accionables
- Descargar modelos 3D gratuitos desde **free3d.com** (especificar formato **FBX** y filtrar por modelos que incluyan texturas/materials)
- Al descargar, seleccionar tanto el archivo **FBX** como la carpeta de **texturas** adjunta
- En Fusion, ir a la pestaña de **3D** y usar **File → Import → FBX** para cargar el modelo
- Si el modelo aparece sin texturas, arrastrar manualmente los archivos de textura desde el explorador de archivos a los nodos de material correspondientes en el **Node Editor**
- Identificar el subobjeto deseado (ej: la mesa) dentro del grupo importado y eliminar los elementos sobrantes
- Ajustar la **escala** del modelo importado usando el parámetro **Scale** en la pestaña **Transform** (ej: valor 50 para reducir)
- Mover el **pivot point** al centro de la composición usando el control **Pivot** en el inspector
- Posicionar el modelo en la escena usando los controles de **Translate** (X, Y, Z) y **Rotate**
- Activar **Shadows** en el modelo importado para mejorar la integración visual
- Encerrar el modelo en un nodo **Merge 3D** para combinarlo con el resto de la escena

## Reglas para agentes
- Usa **free3d.com** como fuente principal para modelos 3D gratuitos
- Siempre descarga modelos en formato **FBX** con texturas incluidas
- Nunca uses modelos sin texturas si necesitas materiales visibles
- Verifica que el modelo importado tenga **Shadows** activado para realismo
- Ajusta la **escala** del modelo importado antes de posicionarlo, ya que los modelos de internet suelen ser más grandes que la escena local

## Errores comunes que evita o menciona
- No confundir el modelo principal con subobjetos adicionales dentro del archivo FBX (ej: la mesa vs. otros elementos sobrantes)
- No olvidar arrastrar manualmente las texturas si el modelo aparece sin materiales al importar
- No dejar el pivot point en su posición por defecto; moverlo al centro de la composición para facilitar el escalado y rotación