# DJI Mini 3 Pro PHOTOGRAMMETRY COURSE 🗺️ Chapter 3
**Fuente:** mundoaudiovisual | https://youtu.be/Wt-NBSEJXDg

## Qué enseña
Ejecución de una misión de fotogrametría planificada en DroneLink con el DJI Mini 3 Pro, procesamiento de las fotografías en Metashape para crear un modelo 3D texturizado, y generación de productos derivados como el modelo de elevación digital, ortomosaico, curvas de nivel y modelo teselado.

## Lecciones accionables
- **Ejecutar misión en DroneLink:** Encender el DJI Mini 3 Pro, esperar señal de satélites (indicador arriba), presionar Play para iniciar la misión automática. El dron se dirige al primer punto de transmisión y comienza a tomar fotografías.
- **Recuperar misión tras cierre de app:** Si la app beta de DroneLink se cierra, reabrirla, recargar el mapa y la ruta, seleccionar "este plan ya tiene una misión", cargar, conectar y presionar Play. El dron reanuda desde el último punto donde se quedó.
- **Cambiar batería y continuar:** Cuando la primera batería se agota, el dron inicia return-to-home automático. Cambiar batería, reabrir la app, presionar Play y la misión continúa desde donde se interrumpió.
- **Importar fotos en Metashape:** Workflow → Add Photo → seleccionar todas las fotos (Ctrl+A o Ctrl+E). Se cargan en el workspace.
- **Configurar calibración de cámara:** Tools → Camera Calibration → Shooting Compensation: "Full" → Error in Shooting: dejar en "3 Pro" (compensa rolling shutter del obturador electrónico del Mini 3 Pro).
- **Orientar fotografías:** Workflow → Orient Photographs → calidad "Maximum" (o "High") → OK. Genera nube de puntos dispersa.
- **Navegar en el panel 3D:** Trackpad mueve izquierda/derecha (rotación), rueda del ratón acerca/aleja, clic en rueda (botón central) desplaza el panel.
- **Crear nube de puntos densa:** Workflow → Create Point Cloud → calidad "Extra Quality" o "High" → marcar "Color points" → OK.
- **Crear malla (modelo 3D):** Workflow → Create Mesh → calidad "Extra High" → marcar "Vertex coloring" y "Depth map reuse" → OK. Tarda varias horas según el equipo.
- **Guardar proyecto:** Después de crear la malla, guardar el proyecto para no perder el progreso.
- **Crear textura:** Workflow → Create Textures → aceptar valores por defecto → OK.
- **Visualizar modelo texturizado:** Usar botón superior → seleccionar "Textured Model".
- **Crear modelo de elevación digital:** Workflow → Create Digital Elevation Model → aceptar valores. Las zonas rojas son más altas, azules más bajas.
- **Crear ortomosaico:** Workflow → Create Orthomosaic.
- **Crear curvas de nivel:** Click derecho sobre el modelo de elevación digital en la lista izquierda → "Shape" (genera curvas de nivel; líneas más separadas = menos relieve, más juntas = más relieve).
- **Crear modelo teselado:** Workflow → Create Tile Model → formato vectorizado que no pixeliza al hacer zoom.

## Reglas para agentes
- Usa "Full" en Shooting Compensation dentro de Camera Calibration antes de orientar fotos.
- Usa calidad "Extra High" para Create Mesh cuando necesites máxima calidad del modelo 3D.
- Usa "Vertex coloring" y "Depth map reuse" al crear la malla para mejorar resultados.
- Guarda el proyecto inmediatamente después de crear la malla, antes de crear texturas.
- Nunca omitas la orientación de fotografías antes de crear la nube de puntos densa.
- Nunca uses calidad inferior a "High" en Create Point Cloud si buscas un modelo detallado.

## Errores comunes que evita o menciona
- La app DroneLink (beta) puede crashear durante la misión; es normal y se soluciona reabriendo y reanudando.
- El obturador electrónico del Mini 3 Pro puede generar rolling shutter; se compensa con la configuración "3 Pro" en Error in Shooting.
- No confundir la nube de puntos dispersa (orientación) con la densa; la densa requiere un paso adicional.
- La textura puede verse muy iluminada en Metashape, pero eso es beneficioso para el manejo de iluminación en Blender.
- El modelo teselado es vectorizado y no pixeliza al hacer zoom, a diferencia del modelo texturizado estándar.