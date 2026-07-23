# The COMPLETE Guide to Creating CG Product Renders
**Fuente:** Interactiv | https://youtu.be/oOCmYxEakjs

## Qué enseña (2-3 líneas)
Tutorial completo de modelado, texturizado e iluminación de un envase tipo room spray en Blender. Cubre desde la creación de la botella, líquido, tapa, resorte y etiqueta hasta la configuración de luces y materiales para un render profesional.

## Técnicas accionables
- **Configurar imagen de referencia:** Shift+A → Image → Reference; en Object Data Properties bajar Opacity a 0.5; activar restricción de seleccionable (icono de cursor tachado) y renombrar colección "RF".
- **Modelado base de botella:** Shift+A → Mesh → Circle; Tab → 1 (vertex select); seleccionar todo → Shift+N (recalcular normales); activar Face Orientation en Overlays.
- **Añadir subdivisiones:** En Object Mode, Ctrl+2 para 2 niveles de Subdivision Surface; clic derecho → Shade Smooth.
- **Añadir loop cuts de soporte:** Ctrl+R y deslizar con clic.
- **Bevel de bordes:** Seleccionar aristas → Ctrl+B; arrastrar para ajustar; rueda del mouse para cambiar número de segmentos; P para cambiar perfil (shape).
- **Solidify modifier:** Añadir desde el panel de modifiers; marcar Even Thickness; arrastrar arriba de Subdivision Surface.
- **Auto merge y snapping:** Activar Auto Merge en el header; cambiar snapping a Vertex (icono de imán); G+G para edge slide y Ctrl para forzar snap.
- **Grid Fill:** Seleccionar bucle de aristas → clic derecho → Grid Fill (o desde Face → Grid Fill); ajustar Span y Offset.
- **Proportional Editing:** O key; cambiar falloff a Sphere; seleccionar vértice/face y arrastrar.
- **Separar selección:** En Edit Mode, P → Selection.
- **Mover 3D Cursor a selección:** Shift+S → Cursor to Selected.
- **Añadir UV Sphere:** Shift+A → Mesh → UV Sphere; reducir segments a 16 o 24.
- **Loop Tools - Circle:** Seleccionar bucle de aristas → clic derecho → LoopTools → Circle.
- **Aplanar en eje:** S → Y → 0 → Enter (para aplanar en Y).
- **Join objects:** Seleccionar múltiples objetos → Ctrl+J.
- **Spring (resorte):** Activar add-on "Add Curve: Extra Objects" en Edit → Preferences → Add-ons; Shift+A → Curve → Curve Spirals → Archimedean; ajustar Turns, Height, Radius; en Geometry de la curva, ajustar Depth (0.2).
- **Curve modifier para etiqueta:** Seleccionar plano subdividido → Modifiers → Add Modifier → Curve; seleccionar la curva objetivo con el eyedropper; luego seleccionar plano y curva → Ctrl+P → Curve Deform.
- **Material de vidrio:** Principled BSDF: Transmission ~1.0, Roughness ~0.05; o usar Glass BSDF directo.
- **Material metálico:** Principled BSDF: Metallic 1.0, Roughness 0.0.
- **Área light con plano translúcido:** Shift+A → Light → Area; Shift+A → Mesh → Plane; asignar material con Translucent BSDF conectado a Surface; seleccionar luz y plano → Ctrl+P → Keep Transformation.
- **Reset transform de hijo:** Alt+R, Alt+G.
- **Ray Visibility:** En Object Properties → Visibility → Ray Visibility, desmarcar canales (Camera, Glossy, etc.).
- **Ajustar escala de líquido dentro de botella:** Seleccionar líquido → Alt+S para escalar por normales y evitar overlapping.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa Ctrl+2 para Subdivision Surface cuando necesites suavizado rápido sin aplicar el modificador.
- Usa Ctrl+B para Bevel cuando quieras bordes definidos en lugar de añadir loop cuts manualmente.
- Usa Grid Fill cuando tengas un bucle de aristas cerrado y necesites rellenar con geometría uniforme.
- Usa Proportional Editing (O) con falloff Sphere cuando deformes superficies curvas como el fondo de la botella.
- Usa Auto Merge + Vertex Snapping cuando necesites soldar vértices de loops duplicados tras aplicar Solidify.
- Usa LoopTools → Circle cuando hayas insetado un agujero y necesites que sea perfectamente circular.
- Usa Curve modifier + Curve Deform parent cuando quieras que una etiqueta plana siga la curvatura de un cilindro.
- Usa Translucent BSDF en un plano padre de un Area Light para crear luces suaves con forma controlada.
- Usa Ray Visibility para ocultar luces/planos del render sin eliminarlos de la escena.
- Usa Alt+S (Shrink/Fatten) en el líquido para escalarlo por normales y evitar que sobresalga del envase.

## Errores comunes / gotchas
- **Normales invertidas:** Tras extruir o usar Solidify, las normales pueden quedar al revés; usar Shift+N para recalcular.
- **Overlapping tras Solidify:** Al aplicar Solidify, los loops internos pueden solaparse; usar Auto Merge + Vertex Snapping para alinear y fusionar.
- **Grid Fill con geometría irregular:** Si el bucle no es uniforme, Grid Fill puede generar deformaciones; ajustar Span y Offset manualmente.
- **Curve modifier sin origins alineados:** La curva y el objeto deformado deben tener sus orígenes en el mismo punto; usar Shift+S para sincronizarlos.
- **Spring demasiado grande:** Al añadir Curve Spirals, reducir Turns (15) y Height, y ajustar Radius antes de modificar Depth.
- **Líquido visible fuera de la botella:** Si el líquido se ve fuera del envase, seleccionarlo y usar Alt+S para escalarlo por normales hacia adentro.
- **Material de vidrio sin efecto:** Asegurarse de que Transmission esté al máximo y Roughness bajo; usar Cycles para mejor resultado.
- **Luces no visibles en render:** Verificar que el plano translúcido tenga el material correcto y que el Area Light tenga potencia suficiente (1000+).