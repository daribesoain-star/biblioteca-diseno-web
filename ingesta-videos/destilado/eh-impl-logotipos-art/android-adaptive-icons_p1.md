# android-adaptive-icons
**Fuente:** impl-logotipos | https://developer.android.com/develop/ui/views/launch/icon_design_adaptive

## Qué enseña
Documenta cómo diseñar e implementar iconos adaptativos (AdaptiveIconDrawable) en Android, que se adaptan a diferentes formas de máscara por OEM, efectos visuales dinámicos y theming de usuario. Cubre los requisitos de capas (foreground, background, monochrome), dimensiones exactas, y la integración mediante XML en el manifiesto de la app.

## Lecciones accionables
- **Dimensiones obligatorias de las capas:** todas las capas (foreground, background, monochrome) deben tener un tamaño de **108x108 dp**.
- **Zona segura:** el logo debe ocupar al menos **48x48 dp** y no exceder **66x66 dp** (el área interna de 66x66 dp nunca es recortada por la máscara del OEM). Los 18 dp externos en cada lado están reservados para máscaras y efectos visuales (parallax, pulsing).
- **Formato de capas:** se prefieren vectores, pero también se aceptan bitmaps. Las capas no deben tener máscaras ni sombras de fondo alrededor del contorno.
- **Soporte de theming (Android 13+):** para que el usuario pueda aplicar el color del wallpaper/tema al icono, se debe proporcionar una **capa monochrome** (monocromática). Desde **Android 16 QPR 2**, el sistema puede themear automáticamente iconos de apps que no proporcionen su propia capa monochrome.
- **Definición en manifiesto:**
  ```xml
  <application
      android:icon="@mipmap/ic_launcher"
      android:roundIcon="@mipmap/ic_launcher_round"
      ...>
  </application>
  ```
- **Archivo XML del icono adaptativo:** guardar en `res/mipmap-anydpi-v26/ic_launcher.xml` usando el elemento `<adaptive-icon>`:
  ```xml
  <adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
      <background android:drawable="@drawable/ic_launcher_background" />
      <foreground android:drawable="@drawable/ic_launcher_foreground" />
      <monochrome android:drawable="@drawable/ic_launcher_foreground" />
  </adaptive-icon>
  ```
- **Inlining de drawables:** se pueden definir drawables directamente dentro de `<foreground>`, `<background>` y `<monochrome>` usando `<inset>` con `android:insetBottom`, `android:insetLeft`, `android:insetRight`, `android:insetTop` en **18dp** cada uno.
- **Shortcuts adaptativos:**
  - **Static shortcuts:** usar el elemento `<adaptive-icon>`.
  - **Dynamic shortcuts:** llamar al método `createWithAdaptiveBitmap()` al crearlos.
- **Condiciones para que NO se muestre el icono themado:**
  - El usuario no habilita "themed app icons" en ajustes del sistema.
  - La app no proporciona capa monochrome y el dispositivo corre una versión anterior a Android 16 QPR 2.
  - El launcher no soporta themed app icons.

## Reglas para agentes
- Usa siempre el elemento `<adaptive-icon>` para definir iconos adaptativos en `res/mipmap-anydpi-v26/`.
- Proporciona siempre al menos dos capas: `<foreground>` y `<background>`; añade `<monochrome>` si se desea soporte de theming.
- Dimensiona todas las capas a **108x108 dp** exactamente.
- Asegura que el logo esté dentro de la zona segura de **48x66 dp** (mínimo 48x48 dp, máximo 66x66 dp).
- No incluyas máscaras ni sombras de fondo en las capas de los drawables.
- Para shortcuts dinámicos, usa siempre `createWithAdaptiveBitmap()`.
- Nunca uses `android:roundIcon` a menos que el diseño del icono incluya un fondo circular como parte central; la mayoría de apps solo necesitan `android:icon`.

## Errores comunes que evita o menciona
- **No actualizar el icono del launcher** con las capas necesarias (foreground/background) provoca que el icono no sea consistente con otros iconos del sistema y no soporte efectos visuales.
- **No proporcionar capa monochrome** impide el theming de usuario en Android 13+ (a menos que el dispositivo sea Android 16 QPR 2 o superior, donde el sistema puede themear automáticamente).
- **Usar dimensiones incorrectas** (logo mayor a 66x66 dp o menor a 48x48 dp) causa recortes no deseados o mala apariencia dentro de la máscara.
- **Incluir máscaras o sombras** en las capas de los drawables viola el diseño requerido.
- **Olvidar que los efectos visuales animados** (parallax, pulsing) son generados por el launcher y pueden variar entre dispositivos.