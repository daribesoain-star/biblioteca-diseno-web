# API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)
**Fuente:** After Effects Scripting Guide (docsforadobe.dev) | https://ae-scripting.docsforadobe.dev

## CompItem — crear y atributos
- Crear: `app.project.items.addComp(name, width, height, pixelAspect, duration, frameRate)`.
- Atributos: `width/height`, `frameRate`, `frameDuration` (1/fps), `duration`, `pixelAspect`, `bgColor` [R,G,B] 0-1, `motionBlur` (bool), `workAreaStart`, `workAreaDuration`, `displayStartTime`, `layers` (LayerCollection), `selectedLayers`, `numLayers`, `time`.
- `layer(index)` (1..numLayers) · `layer(name)` · `layer(otherLayer, relIndex)` · `duplicate()` · `openInViewer()`.

## LayerCollection — crear capas (comp.layers.*)
- `add(item[, duration])` — capa desde un footage/comp item.
- `addNull([duration])`.
- `addSolid(color, name, width, height, pixelAspect[, duration])` → `addSolid([1,0,0],"BG",1920,1080,1)`.
- `addText([sourceText])` → point text. `addBoxText([w,h])` → paragraph/box text.
- `addShape()` → shape layer vacío.
- `addCamera(name, centerPoint)` → `addCamera("Cam",[960,540])`.
- `addLight(name, centerPoint)`.

## Property — valores, keyframes, easing, expressions
- Estático: `prop.setValue(v)` (falla si ya hay keyframes). Ej `layer.opacity.setValue(50)`, `layer.position.setValue([x,y,z])`.
- Keyframe: `prop.setValueAtTime(time, v)` (tiempo en SEGUNDOS). `setValuesAtTimes([t...],[v...])`.
- `addKey(time)` → retorna índice. `numKeys`, `selectedKeys`, `isTimeVarying`, `keyValue(i)`, `valueAtTime(t, preExpr)`.
- **Interpolación:** `setInterpolationTypeAtKey(i, inType[, outType])` con `KeyframeInterpolationType.LINEAR|BEZIER|HOLD`.
- **Easing:** `setTemporalEaseAtKey(i, [inEase][, outEase])` con objetos `KeyframeEase(speed, influence)` (arrays de 1/2/3 según dimensiones). Ej Easy Ease: `var e=new KeyframeEase(0,33); prop.setTemporalEaseAtKey(2,[e],[e]);`.
- **Expressions:** `prop.expression = "wiggle(2,15)"` (se evalúa al setear); `prop.expressionEnabled` (bool), `prop.canSetExpression`, `prop.expressionError`.
- **Atajos de dimensión:** `position.setValue([20,30])` rellena Z=0; `scale.setValue([50,50])` rellena 3ª dim=100; `sourceText.setValue("foo")` auto-envuelve en TextDocument.

## Effects — aplicar por matchName
- `layer.property("ADBE Effect Parade").addProperty("<matchName>")` → retorna el efecto; luego `fx.property("<param>").setValue(v)`.
- **matchNames verificados (doc oficial):** Gaussian Blur=`ADBE Gaussian Blur 2` · Fast Box Blur=`ADBE Box Blur2` · Levels=`ADBE Easy Levels2` · Curves=`ADBE CurvesCustom` · Tint=`ADBE Tint` · Hue/Saturation=`ADBE HUE SATURATION` · Fill=`ADBE Fill` · Gradient Ramp=`ADBE Ramp` · Fractal Noise=`ADBE Fractal Noise` · Drop Shadow=`ADBE Drop Shadow` · Glow=`ADBE Glo2` · Transform=`ADBE Geometry2` · CC Lens=`CC Lens` · CC Sphere=`CC Sphere` · CC Light Burst 2.5=`CC Light Burst 2.5`.
- Lista completa: https://ae-scripting.docsforadobe.dev/matchnames/effects/firstparty/
