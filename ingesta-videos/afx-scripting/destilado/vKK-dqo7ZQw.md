Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente las reglas solicitadas.

```markdown
# Cómo ejecutar scripts en After Effects y Premiere
**Fuente:** NT Productions | https://youtu.be/vKK-dqo7ZQw

## Qué enseña (2 líneas)
Muestra los métodos para ejecutar scripts `.jsx` en After Effects y Premiere Pro: usando ExtendScript, el menú interno de AE, la extensión "ExtendScript Debugger" en VS Code, y desde una extensión CEP (Common Extensibility Platform) mediante `CSInterface.evalScript()`.

## Técnicas de scripting accionables

- **Ejecutar script desde ExtendScript Toolkit (ESTK):**
  1. Abre ESTK desde Creative Cloud.
  2. Selecciona el target: `After Effects CC 2023` o `Premiere Pro 2023`.
  3. Asegúrate de que el indicador de conexión esté **verde** (si está rojo, haz clic para reconectar).
  4. Pega o abre tu script (ej. `alert("running a script");`).
  5. Presiona el botón **Play** (triángulo verde).

- **Ejecutar script desde After Effects (menú interno):**
  - Ve a `File > Scripts > Run Script File...`.
  - Selecciona el archivo `.jsx` guardado en disco.

- **Ejecutar script desde VS Code con "ExtendScript Debugger":**
  1. Instala la extensión "ExtendScript Debugger" (de Adobe).
  2. Abre tu archivo `.jsx` en VS Code.
  3. En la barra inferior, selecciona el target: `After Effects CC 2023` o `Premiere Pro 2023`.
  4. Ve a la vista **Run and Debug** (Ctrl+Shift+D).
  5. Presiona **Run and Debug** (F5). El script se ejecutará en la aplicación target.

- **Ejecutar script desde una extensión CEP (en Premiere Pro, donde no hay "Run Script File"):**
  - Dentro del código de la extensión (HTML/JS), usa `CSInterface`:
    ```javascript
    // Ejemplo dentro de una extensión
    var csInterface = new CSInterface();
    csInterface.evalScript('alert("hello from jsx");');
    ```
  - Para scripts más complejos, define una función en el archivo `.jsx` (ej. `function init() { ... }`) y llámala con:
    ```javascript
    csInterface.evalScript('init()');
    ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa ExtendScript Toolkit (ESTK)** cuando quieras la máxima compatibilidad y no tengas problemas con Mac (aunque en Mac puede fallar). Es el método "tried and true".
- **Usa VS Code + ExtendScript Debugger** si estás en Mac (ESTK suele dar problemas) o si prefieres un entorno moderno con dark mode, variables watch y call stack.
- **No uses ESTK y VS Code al mismo tiempo** para el mismo target. Si uno ya está conectado, el otro fallará. Cierra siempre la aplicación Adobe y el editor que no vayas a usar, luego abre primero el que sí usarás.
- **Si el indicador de conexión en ESTK está rojo**, cierra todas las instancias de VS Code y la aplicación Adobe, luego abre ESTK primero.
- **En VS Code**, si ves el error `"15: can't initialize Target"**, cierra VS Code y la aplicación Adobe, relanza VS Code primero, luego la aplicación Adobe, y vuelve a seleccionar el target.
- **En Premiere Pro**, no existe `File > Scripts > Run Script File`. Las únicas opciones son ESTK, VS Code o una extensión CEP.
- **Para ejecutar scripts desde una extensión CEP**, el archivo `.jsx` debe estar en la carpeta `CEP/extensions/<tu-extension>/host/` o similar, y la función debe estar definida globalmente en el ámbito de ExtendScript.

## Errores comunes

- **"15: can't initialize Target"** en VS Code: conflicto con ESTK abierto o con otra instancia de VS Code. Cierra todo y relanza solo VS Code.
- **Indicador rojo en ESTK**: no puede conectar con la aplicación. Cierra VS Code y la app Adobe, luego abre ESTK primero.
- **No aparece "Run Script File" en Premiere Pro**: es normal. Usa ESTK, VS Code o una extensión CEP.
- **La extensión "Adobe Script Runner" de RenderTom** ya no está disponible en el marketplace (posible copyright claim). No confíes en ella.
- **Si usas VS Code y el script no se ejecuta**, verifica que el target esté seleccionado correctamente en la barra inferior (no solo en el launch.json).
```