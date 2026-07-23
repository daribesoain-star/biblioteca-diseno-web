# Delta — tipografia-en-movimiento-motion-design

## Reglas nuevas propuestas

- USA duración base de 300ms para transiciones en móvil, 225ms para elementos entrando y 195ms para elementos saliendo de pantalla; NO EXCEDAS 400ms en ninguna transición móvil (fuente: m1.material.io)
- USA la curva de desaceleración `cubic-bezier(0.0, 0.0, 0.2, 1)` para elementos entrando en pantalla y la curva de aceleración `cubic-bezier(0.4, 0.0, 1, 1)` para elementos saliendo de pantalla (fuente: m1.material.io)
- USA cámara de 1 nodo (sin punto de interés) para movimientos rápidos y múltiples cambios de encuadre en tipografía cinética; evita cámara de 2 nodos (fuente: schoolofmotion.com)
- USA marcadores en la línea de tiempo de la composición (no en layers de audio) presionando asterisco (*) del teclado numérico; los marcadores en layers de audio se pierden al precomponer (fuente: schoolofmotion.com)
- USA un objeto nulo (Null Object) por cada movimiento de cámara diferente, parentando la cámara al primer nulo y anidando los nulos entre sí para transiciones suaves (fuente: schoolofmotion.com)
- USA CC Reptile en modo Repeat para crear texturas de fondo que permitan percibir el movimiento de cámara; limita valores a máximo 15,000px para evitar ralentizar After Effects (fuente: schoolofmotion.com)
- AJUSTA la duración dinámicamente según distancia recorrida y cambio de área superficial: duraciones más largas para grandes distancias o cambios drásticos de área, duraciones más cortas para distancias cortas o cambios menores (fuente: m1.material.io)
- INCREMENTA la duración en tablet un 30% respecto a móvil y REDUCE la duración en wearable un 30% respecto a móvil; usa 150-200ms para animaciones en escritorio (fuente: m1.material.io)

## Errores nuevos propuestos

- Usar cámara de 2 nodos para movimientos rápidos y múltiples cambios de encuadre: es mucho más difícil de controlar que una de 1 nodo y genera curvas de animación complejas (fuente: schoolofmotion.com)
- Colocar marcadores en el layer de audio en lugar de en la composición: al mover el layer o precomponer, los marcadores se pierden y la sincronización se rompe (fuente: schoolofmotion.com)
- Animar todos los movimientos de cámara directamente sobre la cámara sin usar objetos nulos: dificulta la transición suave entre diferentes movimientos y hace imposible reutilizar secuencias (fuente: schoolofmotion.com)
- Usar una única duración para todas las animaciones en lugar de ajustarla dinámicamente según distancia y tipo de transición: el movimiento se percibe uniforme y poco natural (fuente: m1.material.io)

## Contradicciones detectadas

- **Regla existente** dice: "Easing para texto entrante: ease-out (cubic-bezier(0.0, 0.0, 0.2, 1))". **Destilado nuevo** dice: "USA la curva de desaceleración (cubic-bezier(0.0, 0.0, 0.2, 1)) para elementos entrando en pantalla". **No hay contradicción**: ambas usan la misma curva con el mismo nombre (ease-out = desaceleración).
- **Regla existente** dice: "Easing para texto saliente: ease-in (cubic-bezier(0.4, 0.0, 1, 1))". **Destilado nuevo** dice: "USA la curva de aceleración (cubic-bezier(0.4, 0.0, 1, 1)) para elementos saliendo de pantalla". **No hay contradicción**: ambas usan la misma curva con el mismo nombre (ease-in = aceleración).