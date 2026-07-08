# This Davinci Resolve plugin is changing the way I work
**Fuente:** mundoaudiovisual | https://youtu.be/_mWIfKK8FmA

## Qué enseña
Este video presenta Dehancer Pro 7.3.0, un plugin para DaVinci Resolve que permite convertir footage log a REC 709 con un solo clic, emular perfiles de película (60 perfiles incluidos) y aplicar efectos vintage como bloom, grano, daño de película y filtros ópticos. También cubre instalación, activación de licencia y uso básico en el módulo Color.

## Lecciones accionables
- **Instalación del plugin:** Descargar el instalador desde el enlace en la descripción, ejecutarlo, aceptar la licencia y seguir los pasos. Luego en DaVinci Resolve ir a *Preferencias del Sistema > Memoria y GPU* y asegurarse de que el modo de GPU sea **Metal** (desactivar "Automático" y seleccionar Metal manualmente).
- **Descarga de perfiles:** En el módulo Color, aplicar el efecto *Dehancer Pro* a un nodo. Dentro del plugin, ir a la sección **Film** y hacer clic en **"Download the profiles"** para descargar todos los perfiles de película.
- **Activación de licencia:** Dentro del plugin, ir al final del panel y hacer clic en **"License info"**. Ingresar correo electrónico y contraseña de la cuenta Dehancer, seleccionar la licencia disponible y hacer clic en **"Activate"** para eliminar las marcas de agua.
- **Corrección de color básica (log a REC 709):** Aplicar Dehancer Pro al clip. En la sección **Camera**, seleccionar la cámara (ej. DJI > Osmo Action 4). En **GEMs**, desactivar **Film Look**. Ajustar *Exposure*, *Color Temperature*, *Tint*, *Black Point* y *White Point* según necesidad.
- **Efectos adicionales disponibles:** En la sección **Film** se pueden activar/desactivar: *Grain* (granulado), *Bloom* (resplandor en altas luces), *Halation* (efecto de halo en bordes, con opciones 8mm y 16mm), *Film Damage* (daño de película antigua), *Vintage* (efecto de película envejecida), *Polaroid*, *Century W Conical Filter*, *Super 35mm*, y *Action* (reflejos de lente).
- **Herramientas de asistencia:** En el plugin se puede activar *False Color* para ver exposición, *Clipping Indication* para ver zonas quemadas, y ajustar la calidad de procesamiento.
- **Aplicación móvil:** Dehancer también tiene app para iOS, descargable desde la App Store, que permite aplicar los mismos perfiles a clips grabados con el móvil.

## Reglas para agentes
- Usa **Metal** como modo de GPU en Preferencias del Sistema antes de usar Dehancer Pro.
- Descarga los perfiles de película la primera vez que abras el plugin, yendo a **Film > Download the profiles**.
- Activa la licencia desde **License info** al final del panel del plugin para eliminar marcas de agua.
- Selecciona siempre la cámara exacta en **Camera** (ej. DJI > Osmo Action 4) para una corrección precisa.
- Desactiva **Film Look** en **GEMs** si solo quieres la conversión log a REC 709 sin emulación de película.
- Aplica el plugin a un nodo individual en el módulo Color, no directamente al clip en la línea de tiempo.

## Errores comunes que evita o menciona
- No olvidar descargar los perfiles de película después de instalar el plugin, o no aparecerán las opciones de emulación.
- No usar el plugin sin activar la licencia, ya que mostrará marcas de agua en el footage.
- No seleccionar la cámara incorrecta en el plugin, lo que daría una corrección de color imprecisa.
- No dejar el modo de GPU en "Automático" en Preferencias del Sistema; debe fijarse en Metal para compatibilidad óptima.