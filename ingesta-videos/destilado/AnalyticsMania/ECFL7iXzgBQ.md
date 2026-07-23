# Trigger with "Click Element Contains" not working in Google Tag Manager?
**Fuente:** AnalyticsMania | https://youtu.be/ECFL7iXzgBQ

## Qué enseña (2-3 líneas)
Explica por qué el trigger con la condición "Click Element contains" no funciona en Google Tag Manager: la variable `Click Element` no es un string, sino un objeto complejo. Muestra cómo usar correctamente el operador "matches CSS selector" y la necesidad de aprender selectores CSS para rastrear clics en elementos específicos.

## Lecciones accionables
- **Nunca uses el operador "contains" con la variable `Click Element`**: no funciona porque `Click Element` es un objeto, no un string. Los únicos operadores que funcionan con `Click Element` son "matches CSS selector" y "does not match CSS selector".
- **Para depurar, usa `console.dir()` en lugar de `console.log()`**: en una etiqueta Custom HTML, escribe `console.dir({{Click Element}})` para ver la estructura completa del objeto en la consola del navegador.
- **Usa variables de clic de tipo string cuando sea posible**: `Click Text`, `Click Target`, `Click ID` son strings y sí funcionan con el operador "contains". Ejemplo: `Click Text contains pages` sí dispara correctamente.
- **Para rastrear elementos con clases en elementos padre, escribe un selector CSS válido**: por ejemplo, para rastrear clics en enlaces (`<a>`) que son hijos directos de un elemento con clase `menu-item`, usa el selector: `a.menu-item > a` o más precisamente: `a` que sea hijo directo (`>`) de un elemento con clase `.menu-item`. En el trigger, selecciona "matches CSS selector" y pega el selector.
- **Solicita a desarrolladores que agreguen clases o IDs a los elementos** si eres principiante, para que variables como `Click Classes` o `Click ID` se llenen automáticamente y puedas usarlas con "contains".
- **No copies selectores CSS largos automáticos del inspector**: son frágiles y pueden romperse con cambios en el código. Inviértete en aprender fundamentos de selectores CSS.

## Reglas para agentes
- Usa el operador "matches CSS selector" cuando trabajes con la variable `Click Element`; nunca uses "contains" con esa variable.
- Cuando necesites depurar `Click Element`, implementa una etiqueta Custom HTML con `console.dir({{Click Element}})` y revisa la consola del navegador.
- Si el elemento a rastrear tiene la clase en un ancestro, escribe un selector CSS que refleje la jerarquía (ej: `.menu-item > a`).
- Prefiere variables de tipo string (`Click Text`, `Click ID`, `Click Classes`) para condiciones "contains" siempre que estén pobladas.
- No copies selectores CSS generados automáticamente por el inspector de elementos; construye selectores manuales basados en clases o IDs semánticos.

## Errores comunes que evita o menciona
- **Usar "contains" con `Click Element`**: el video muestra que aunque en preview aparece como texto, en realidad es un objeto y el operador "contains" no lo evalúa correctamente.
- **Confiar ciegamente en el preview mode**: el preview muestra `Click Element` como un string, lo que lleva a pensar que "contains" funcionará, pero no es así.
- **Usar selectores CSS incorrectos**: escribir solo `menu-item` sin el punto (`.menu-item`) o sin especificar la relación padre-hijo (`>`).
- **Copiar selectores largos automáticos del inspector**: son frágiles y propensos a romperse con cambios mínimos en el código HTML.