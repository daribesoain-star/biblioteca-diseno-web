# How To Make Viral VFX Videos With Higgsfield AI
**Fuente:** hf_presets | https://youtu.be/GODh8WBP124

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield permite crear videos VFX virales a partir de una imagen usando efectos preconstruidos (template-based). El flujo clave es: crear un personaje con fotos tuyas → generar imágenes de ti en cualquier escenario → aplicar efectos visuales predefinidos. También cubre modelos de video (Higgsfield, Minia, SeaDance, VO3), mezcla de efectos y la nueva función "draw to video".

## Tips y flujos accionables

### Crear personaje (dataset optimo)
- **Cantidad:** subir hasta 70 imagenes.
- **Variedad obligatoria:** fotos en distintas ubicaciones, perfiles (frontal, lateral), expresiones (riendo, serio, cara tonta).
- **Regla de calidad:** nada cubriendo la cara (sin mascarillas ni gafas de sol). El sistema rankea las imagenes como "excellent quality".
- **Proceso:** Homepage → Character → Create Character → arrastrar dataset → poner nombre → Generate.

### Generar imagen de ti en cualquier escenario
- **Prompt ejemplo:** "a man in a street"
- **Aspect ratio recomendado:** 16:9
- **Calidad:** seleccionar "High" en lugar de Basic.
- **Estilo recomendado:** "General", "iPhone style" o "Realistic" (evitar estilos vintage/2000s si buscas realismo).
- **Truco para replicar imagenes de templates:** descargar la imagen de referencia (click derecho → open in new tab) → arrastrarla al generador de personajes → Generate → obtienes la misma escena con tu cara.

### Crear video VFX (paso a paso)
1. **Ir a:** Homepage → Visual Effects → seleccionar efecto (ej: Money Rain, Flame On, Freeze, Invisible, Duplicate).
2. **Seleccionar template:** elegir uno de los ejemplos predefinidos (te da el prompt y efecto precargados).
3. **Click "Recreate"** → te lleva a la pestaña Create → Video.
4. **Reemplazar imagen:** quitar la imagen de ejemplo y arrastrar tu propia foto (generada con tu personaje).
5. **No escribir prompt** (el efecto ya trae su prompt interno).
6. **Parametros:**
   - **Duration:** 6 segundos (recomendado).
   - **Resolution:** 1080p.
7. **Click Generate.**

### Modelos de video (seleccion)
- **Para efectos virales trending:** usar "Effects" (seleccion automatica de Higgsfield).
- **Modelos disponibles:** Higgsfield, Minia, SeaDance, VO3 (cada uno especializado en algo distinto).
- **Camera controls (cinematicos):**
  - Basic: zoom in, lazy susans, crane shots.
  - Epic (alta produccion): bullet time, crane over the head, FPV drone shots.
- **FPV Drone:** subir imagen de paisaje → genera video con movimiento de dron.

### Mezcla de efectos (Mix)
- **Acceso:** en Change → Mix.
- **Ejemplo:** combinar "Action Run" + "Set on Fire".
- **Slider de intensidad:** valores por defecto 85% / 50% (ajustables). Disminuir o aumentar segun preferencia.
- **Prompt opcional:** se puede anadir texto breve.

### Draw to Video (nueva funcion)
- **Como usar:** dibujar sobre la imagen (texto, objetos, formas) → Generate → el video sigue lo dibujado.

## Reglas para el erudito de Higgsfield

- **Para crear un personaje usable:** sube minimo 20-30 fotos variadas (frontal, perfil, expresiones) con rostro descubierto y calidad "excellent".
- **Para generar imagenes realistas de ti:** usa estilo "General", "iPhone style" o "Realistic" con aspect ratio 16:9 y calidad High.
- **Para replicar un efecto viral exacto:** descarga la imagen del template → generala con tu personaje → usala en el efecto correspondiente.
- **Para videos cinematicos:** usa los presets de "Epic Camera Controls" (bullet time, crane over head) o "FPV Drone" con imagenes de paisaje.
- **Para combinar efectos:** usa Mix con slider de intensidad ajustable (default 85/50).
- **Para control preciso de movimiento:** usa Draw to Video para indicar trayectorias u objetos especificos.
- **Para duracion optima:** 6 segundos a 1080p.

## Errores comunes / que evitar

- **Subir pocas fotos o solo frontales:** el modelo no podra generar perfiles laterales ni expresiones variadas.
- **Usar fotos con elementos tapando la cara:** el sistema las rechaza o baja calidad.
- **Escribir prompt manual en efectos VFX:** no es necesario, el efecto ya trae su prompt interno; anadirlo puede generar alucinaciones.
- **Seleccionar estilos vintage/2000s para realismo:** dan resultados estilizados, no naturales.
- **Usar calidad Basic para videos:** reduce fidelidad; siempre usar High.
- **Ignorar el ranking de calidad de imagenes:** si una foto sale "poor", no incluirla en el dataset.
- **No descargar la imagen de referencia del template:** si quieres replicar exactamente un efecto, necesitas la imagen original para regenerarla con tu cara.