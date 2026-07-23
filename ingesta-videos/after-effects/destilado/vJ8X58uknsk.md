# 5 Essential Techniques for Compositing in After Effects
**Fuente:** Adobe Video | https://youtu.be/vJ8X58uknsk

## Qué enseña
Cinco técnicas prácticas para mejorar la integración de elementos visuales en una composición en After Effects, enfocadas en corrección de color, iluminación, niveles de negro, máscaras con pluma variable y supresión de derrame de color. El tutorial cubre desde la planificación previa al rodaje hasta ajustes finales como la adición de grano.

## Técnicas accionables
- **Corrección de color por canales:** Haz clic en el icono rojo-verde-azul debajo de la ventana de previsualización para ver el metraje en canales separados (rojo, verde, azul). Aplica el efecto **Curves** (Efecto > Ajuste de color > Curvas). Cambia el canal del efecto Curves al canal de color correspondiente al que estás visualizando en la ventana de composición. Ajusta la curva de ese canal para que coincida con el fondo. Repite para cada canal. Al volver a modo RGB, el elemento del frente coincidirá mejor con el entorno.
- **Ajuste de niveles de negro con Lumetri Scopes:** Ve a **Window > Lumetri Scopes** para visualizar los niveles de negro de tu composición. Usa el efecto **Curves** para ajustar los niveles de negro del elemento de primer plano hasta que coincidan con los del fondo, guiándote por los scopes.
- **Pluma variable en máscaras:** Después de crear una máscara con la herramienta Pluma (Pen Tool, atajo **G**), mantén presionado el icono de la herramienta Pluma en la barra de herramientas y selecciona **Mask Feather Tool** (herramienta de pluma de máscara). Haz clic y arrastra sobre diferentes puntos del borde de la máscara para añadir gradientes de pluma (feathering) variables en áreas específicas, ajustando la suavidad del borde de forma no uniforme.
- **Supresión de derrame de color:** Ve a **Effect > Keying > Advanced Spill Suppressor**. Mantén el método en **Standard** si funciona, o cámbialo a **Ultra**. Selecciona el color de fondo original (key color) en el selector de color del efecto para eliminar el derrame de ese color sobre el elemento de primer plano.
- **Adición de grano final:** Aplica un efecto de grano (por ejemplo, **Effect > Noise & Grain > Add Grain**) para unificar visualmente todos los elementos de la composición.

## Reglas para el erudito (imperativas y verificables)
- Usa la visualización por canales de color (icono RGB debajo de la previsualización) solo cuando el canal de Curves coincida exactamente con el canal que estás viendo en la ventana de composición.
- Planifica la dirección de la luz del fondo antes de rodar el elemento de primer plano; si el fondo tiene luces cenitales, el sujeto no debe estar iluminado desde abajo.
- Ajusta los niveles de negro con Curves usando Lumetri Scopes como guía visual; niveles de negro inconsistentes son una señal reveladora de que los elementos pertenecen a mundos diferentes.
- Usa la Mask Feather Tool para bordes con pluma variable solo después de tener la máscara creada con la herramienta Pluma; no es aplicable a máscaras creadas con formas geométricas.
- En Advanced Spill Suppressor, prueba primero el método **Standard**; si no funciona, cambia a **Ultra** y selecciona el key color exacto del fondo.

## Errores comunes que evita o menciona
- **Iluminación incompatible:** Si el fondo tiene luces desde arriba pero el sujeto está iluminado desde abajo, la composición se sentirá desconectada sin importar los ajustes. El video enfatiza que esto debe planificarse antes de rodar.
- **Niveles de negro inconsistentes:** Pueden hacer que la composición se sienta "apagada" o extraña sin que se pueda identificar la causa a simple vista. El uso de Lumetri Scopes ayuda a diagnosticar y corregir este problema.
- **Pluma uniforme en bordes mixtos:** Usar la herramienta Pluma normal para máscaras con bordes duros y suaves produce un difuminado inconsistente. La Mask Feather Tool permite aplicar pluma variable para igualar bordes de diferente naturaleza.