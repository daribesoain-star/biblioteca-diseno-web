# Export 3D models to Unity
**Fuente:** Octodemy | https://youtu.be/dQWHU8yDpAo

## Qué enseña (2-3 líneas)
Cómo exportar modelos 3D desde Blender a Unity con rotaciones y escalas correctas, incluyendo objetos con múltiples materiales, texturas, y personajes con armaduras y animaciones. Cubre la configuración de exportación FBX, manejo de texturas (incrustadas o copiadas), y verificación de orientación en Unity.

## Técnicas accionables
- **Aplicar transformaciones:** selecciona el objeto, presiona **Ctrl+A** y elige **Rotation & Scale**.
- **Exportar FBX:** ve a **File > Export > FBX (.fbx)**.
- **Configurar exportación:**
  - Activa **Selected Objects** para exportar solo los objetos seleccionados.
  - En la sección **Transform**, activa **Apply Transform** (corrige escala/rotación en Unity).
  - En **Geometry**, activa **Apply Modifiers**.
  - Si el objeto mira hacia la cámara frontal de Blender, no cambies la dirección Z (Forward).
  - Desactiva **Bake Animations** si no exportas animaciones.
  - Guarda la configuración: presiona **+** bajo **Operator Presets** y asígnale un nombre.
- **Exportar con texturas:**
  - En **Path Mode**, selecciona **Copy** para copiar texturas a una carpeta con el nombre del archivo.
  - O presiona el icono de clip para **Embed Textures** dentro del FBX.
  - En Unity, si usaste texturas incrustadas, selecciona el modelo y haz clic en **Unpack Texture** (extrae las texturas a una carpeta).
  - Si aparece advertencia de texturas normales, presiona **Fix Now** (cambia el tipo de imagen a Normal).
- **Exportar múltiples objetos:** selecciona todos, ve a **Transform Tool** y pon la opción en **Local** para ver los ejes locales. Al exportar juntos, se mantienen como objetos individuales con sus rotaciones locales.
- **Exportar personajes con armadura y animaciones:**
  - Selecciona la armadura y la malla (usa **Shift+clic** o clic derecho > **Select Hierarchy**).
  - Activa **Bake Animations**.
  - Desactiva **NLA Strips** (evita que las NLA se horneen como capas de animación).
  - Desactiva **Add Leaf Bones** (los huesos hoja no son necesarios en motores de juego).
  - Activa **Only Deform Bones** para exportar solo los huesos que deforman la malla (útil para control rigs, pero cuidado con rigs que dependen de huesos no deformantes, como los de tipo "Rigify").

## Reglas para el erudito
- Usa **Ctrl+A > Rotation & Scale** siempre antes de exportar para evitar rotaciones/escalas extrañas en Unity.
- Activa **Apply Transform** en la exportación FBX para que Unity herede las transformaciones correctas.
- Desactiva **Add Leaf Bones** al exportar armaduras; los motores de juego no los necesitan y solo añaden game objects vacíos.
- Activa **Only Deform Bones** si tu rig tiene huesos de control que no deforman la malla, pero verifica que los huesos deformantes no dependan de ellos.
- Usa **Path Mode: Copy** o **Embed Textures** cuando exportes con texturas; luego en Unity usa **Unpack Texture** si elegiste incrustar.
- Configura la orientación Forward en **-Z** si tu modelo mira hacia la cámara frontal de Blender; de lo contrario, déjalo por defecto.

## Errores comunes / gotchas
- **Olvidar aplicar transformaciones:** el modelo llega a Unity con rotaciones o escalas incorrectas (ej. rotado 90° en X).
- **No activar Selected Objects:** se exportan todos los objetos de la escena, incluso los ocultos.
- **Dejar NLA Strips activado:** las animaciones de NLA se hornean como capas adicionales, causando comportamientos inesperados.
- **Activar Add Leaf Bones:** se crean game objects vacíos por cada hueso terminal, afectando el rendimiento.
- **Usar Only Deform Bones en rigs como Rigify:** puede romper la deformación si los huesos deformantes dependen de huesos no deformantes (ej. huesos de control).
- **No extraer texturas incrustadas en Unity:** el modelo aparece sin texturas hasta que se ejecuta **Unpack Texture**.
- **Ignorar la advertencia de texturas normales:** si no presionas **Fix Now**, el tipo de imagen queda incorrecto y las normales no se renderizan bien.