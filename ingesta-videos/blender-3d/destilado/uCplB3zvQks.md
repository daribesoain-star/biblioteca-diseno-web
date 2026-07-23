# New Anime Cel/Toon Shader for Blender 4.2 and Beyond [EEVEE] - PART 1 Comfee Tutorial
**Fuente:** Comfee Mug | https://youtu.be/uCplB3zvQks

## Qué enseña
Crear un shader cel/toon en EEVEE que reaccione a luces de colores, usando nodos de Shader to RGB, ColorRamp y Mix Color. Incluye un truco para suavizar el sombreado esférico con Texture Coordinate y Mapping, y un método para corregir solapamiento de bordes en áreas de luz coloreada.

## Técnicas accionables
- Agrega un sol (Sun) con **Strength = 3** y **Angle = 20** en las propiedades de luz.
- Crea el shader base: **Shift+A > Shader > Diffuse BSDF**, luego **Shift+A > Converter > Shader to RGB**, luego **Shift+A > Converter > ColorRamp** (modo **Constant**). Conecta: Diffuse BSDF > Shader to RGB > ColorRamp > Material Output Surface.
- Duplica el ColorRamp (**Shift+D**). Agrega **Shift+A > Color > Mix Color** (modo **Hue**). Conecta: el segundo ColorRamp (con stops negro y blanco) al segundo input del Mix Color, y el primer ColorRamp al primer input. El output del Mix Color va al Material Output.
- Para que el shader adopte el color de una luz puntual: coloca una **Point Light** con color distinto al blanco. Ajusta el stop blanco del segundo ColorRamp para controlar el área de influencia de la luz coloreada.
- Para corregir solapamiento en bordes de luz coloreada: copia la posición del stop de color original y súmale **0.3 a 0.35** en el primer ColorRamp.
- Para reducir el efecto de la luz coloreada: baja el valor (Value) del stop blanco del segundo ColorRamp.
- Para suavizar el sombreado en un objeto: selecciona el objeto, ve a **Object Properties > Visibility** y desactiva **Shadows**. Luego en el shader: **Shift+A > Vector > Mapping**, **Shift+A > Vector > Mix** (modo **Vector**), **Shift+A > Input > Texture Coordinate**. Conecta: Texture Coordinate **Object** output al input **B** del Mix Vector. Mapping output al input **A** del Mix Vector. Mix Vector output al **Normal** input del Diffuse BSDF. Ajusta el **Factor** del Mix Vector (0 = sombreado normal, 1 = sombreado esférico completo).
- Para suavizar aún más: agrega un **Shift+A > Converter > ColorRamp** con un gradiente suave, luego **Shift+A > Color > Mix Color** (modo **Overlay**). Conecta el gradiente al segundo input y el Mix Color (Hue) al primer input.

## Reglas para el erudito
- Usa **ColorRamp en modo Constant** para el sombreado cel básico, no Linear ni otros modos.
- Usa **Mix Color en modo Hue** cuando quieras que el shader herede el tono de luces de colores.
- Usa **Texture Coordinate > Object** conectado a un **Mix Vector** cuando necesites que un objeto ignore su propia forma y se comporte como esférico para el sombreado.
- Usa **desactivar Shadows** en Object Properties > Visibility cuando apliques el truco de sombreado esférico para evitar artefactos.
- Usa **Overlay** en Mix Color para añadir un gradiente suave sin destruir el color base.

## Errores comunes / gotchas
- Olvidar desactivar **Shadows** en el objeto que usa el truco de sombreado esférico; causa sombras incorrectas.
- No ajustar el **Factor** del Mix Vector gradualmente; un factor de 1 hace que todo el objeto se vea completamente plano.
- Usar el mismo ColorRamp para ambos inputs del Mix Color; se pierde el efecto de luz coloreada.
- No sumar **0.3–0.35** a la posición del stop de color original; aparecen líneas de solapamiento visibles en los bordes de la luz coloreada.
- Conectar el **Texture Coordinate > Object** al input equivocado del Mix Vector; debe ir a **B**, no a A.