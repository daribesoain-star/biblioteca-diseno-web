# 5 Motion Behaviors You Need to Know!
**Fuente:** jennjagerpro | https://youtu.be/R2RMF2hJGJs

## Qué enseña (2-3 líneas)
El video presenta cinco comportamientos (behaviors) poco conocidos de Apple Motion que permiten mayor control y creatividad en animaciones: Clamp, Link, Negate, Gravity y Audio. Muestra cómo usarlos solos o combinados para efectos como restringir rebotes, sincronizar elementos, crear sombras, simular gravedad en partículas y animar al ritmo de audio.

## Lecciones accionables

- **Clamp behavior:** Aplicar a animaciones con overshoot para restringir el movimiento a un límite mínimo o máximo. Pasos: Behaviors > Parameter > Clamp → en Inspector, en "Apply to" seleccionar la propiedad (ej. Rotation) → cambiar "Clamp at" a Minimum o Maximum. Útil para que un texto que rebota no sobrepase una línea de referencia.
- **Link behavior:** Vincular propiedades de un objeto a otro. Pasos: Behaviors > Parameter > Link → arrastrar el objeto fuente al "Source Object well" → en "Target Parameters" elegir la propiedad a controlar (ej. Properties > Transform > Scale > X) → en "Source Parameter" elegir Object Attributes > Size > Width. Activar manualmente el behavior si está deshabilitado. Ejemplo: línea que se expande automáticamente al añadir texto.
- **Negate behavior:** Invertir el valor de una propiedad animada. Pasos: Behaviors > Parameter > Negate → aplicarlo a la propiedad deseada (ej. Shear). Se usa combinado con Link para que un elemento secundario (sombra) se mueva en dirección opuesta al original.
- **Gravity behavior:** Simular gravedad en emisores de partículas. Pasos: crear un emisor (seleccionar imagen → Make Particles) → cambiar Shape de Point a Line, ajustar Start/End points → Behaviors > Simulations > Gravity → ajustar Acceleration. Combinar con Scale Randomness, aumentar Life y Speed del emisor para realismo.
- **Audio behavior:** Sincronizar animaciones con pistas de audio. Pasos: seleccionar objeto → Behaviors > Parameter > Audio → arrastrar archivo de audio al "Source Audio well" → en "Apply to" elegir propiedad (ej. Properties > Transform > Scale > All). Duplicar behavior para animar múltiples propiedades (ej. Outline Width).
- **Edge Collision behavior (mención honorífica):** Behaviors > Simulation > Edge Collision — hace que partículas reboten en los bordes del frame.

## Reglas para agentes

- Usa Clamp behavior cuando un overshoot o rebote sobrepase un límite visual deseado; configúralo siempre en Minimum o Maximum según la dirección a restringir.
- Usa Link behavior cuando necesites que un elemento (ej. línea subrayada) se adapte dinámicamente al tamaño de otro (ej. texto); activa manualmente el behavior si está deshabilitado por defecto.
- Usa Negate behavior solo después de aplicar Link a una propiedad, para invertir su dirección (ej. sombra que se mueve opuesta al original).
- Usa Gravity behavior exclusivamente en emisores de partículas para que caigan hacia abajo; ajusta Acceleration para controlar la velocidad de caída.
- Usa Audio behavior vinculando siempre un archivo de audio en el "Source Audio well" y seleccionando una propiedad transform (Scale, Outline Width, etc.) para animar al ritmo del sonido.
- Nunca combines Negate con Link sin antes verificar que la propiedad destino esté correctamente enlazada al objeto fuente.

## Errores comunes que evita o menciona

- **No activar el Link behavior manualmente:** Por defecto está deshabilitado; hay que habilitarlo en el Inspector para que funcione.
- **Usar solo Overshoot behavior ignorando otros:** El video critica el uso excesivo de Overshoot y muestra alternativas como Clamp para controlar rebotes.
- **Aplicar Negate sin Link previo:** Negate solo tiene sentido cuando se combina con Link para invertir una animación vinculada (ej. sombra que se mueve en dirección contraria).
- **No ajustar parámetros del emisor con Gravity:** Para realismo, hay que modificar Scale Randomness, Life y Speed además de aplicar Gravity.
- **Usar Edge Collision sin propósito práctico:** El video lo menciona como divertido pero sin aplicación real comprobada; sugiere no usarlo si no hay un contexto claro.