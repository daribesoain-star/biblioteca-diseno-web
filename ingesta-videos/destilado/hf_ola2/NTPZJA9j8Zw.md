# Como Crea Vídeos Largos Cinematográficos y consistentes con IA | Seedance 2.0 + Higgsfield
**Fuente:** hf_ola2 | https://youtu.be/NTPZJA9j8Zw

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield permite romper el límite de 15 segundos de Seedance 2.0 usando dos métodos: extensión por últimos frames del clip anterior + imagen de referencia, o bien manteniendo personajes y escenarios con grids de múltiples ángulos sobre fondo blanco. La clave está en prompts ultra-específicos y videos de 8-10 segundos en vez de 15 para evitar alucinaciones.

## Tips y flujos accionables

### Prompt base recomendado (VERBATIM del video)
```
[Estilo cinematográfico: epic, classic style]
[Lente: especificar tipo de lente]
[Color correction: indicar]
[Iluminación: describir]
[Audio: sonidos especiales si aplica]
[Comportamiento de cámara: movimiento, si es jerk o suave]
[Duración: X segundos (3-15)]
[Énfasis en estilos: realism, good physics]
```

### Método 1: Extensión continua (escena única >15s)
1. **Genera primer clip** en Seedance 2.0 (8-10s recomendado, no 15s).
2. **Guarda los últimos 3 segundos** del video generado.
3. **Sube ese clip** a "Upload Media" en la interfaz de Seedance (máximo 14s de referencia).
4. **Sube también la imagen de referencia** del personaje (grid de múltiples ángulos sobre fondo blanco).
5. **Prompt de extensión** (personalizar con tu video):
   ```
   Extiende el video 15 segundos con una escena continua desde el último frame.
   Asegura mismo personaje principal, mismo [traje blanco/atuendo], misma [nave/escenario],
   misma iluminación, misma identidad facial.
   ```
6. **Resultado**: transición perfecta, cámara continua, como un solo take.

### Método 2: Escenas múltiples con consistencia de personajes
1. **Crea grid de tu personaje** en múltiples posiciones sobre fondo blanco (frente, perfil, espalda, 360°).
2. **Sube a Higgsfield**: foto del personaje + foto del escenario + grid de referencia.
3. **Prompt específico para cada escena** (ej: "dos abuelas peleando por Nutella en supermercado pastel rosa").
4. **Para nuevas escenas**: crea nuevas imágenes de fondo que mantengan coherencia visual (mismos colores, misma arquitectura).
5. **Mantén las mismas fotos de personajes** en todas las escenas como referencia constante.

### Configuración técnica exacta
| Parámetro | Valor |
|-----------|-------|
| Modelo | Seedance 2.0 (marcado por defecto) |
| Duración por clip | 8-10 segundos (mejor que 15) |
| Aspect ratio | 16:9, 9:16, 4:3 |
| Resolución máxima | 720p |
| Costo | 90 créditos (con descuento temporal) |

### Trucos para look cinematográfico
- **Especificar lente** en el prompt (ej: "35mm", "anamorphic").
- **Control de cámara**: describir movimiento exacto ("cámara lenta hacia adelante", "pan lateral suave").
- **Evitar cambios bruscos de cámara** → el AI alucina.
- **Reducir duración** a 8-10s para prompts complejos → menos invención.
- **Subir múltiples referencias visuales** (personaje + escenario + grid) para que Seedance no invente.

## Reglas para el erudito de Higgsfield

- **Para mantener consistencia de personaje en múltiples escenas**: usa grid de 360° del personaje sobre fondo blanco como imagen de referencia en cada generación.
- **Para extender un clip más allá de 15s**: usa el método de "últimos 3 segundos del video anterior" como input en Upload Media + misma imagen de personaje + prompt de extensión.
- **Para evitar alucinaciones**: limita cada clip a 8-10 segundos y sé ultra-específico en el prompt (lente, iluminación, color, movimiento de cámara, sonido).
- **Para transiciones suaves entre escenas**: mantén las mismas imágenes de referencia de personajes y crea nuevos fondos que sigan la misma paleta de colores y estilo arquitectónico.
- **Para escenas con múltiples personajes**: sube foto individual de cada personaje sobre fondo blanco + foto del escenario + prompt que describa la interacción exacta.

## Errores comunes / que evitar

- **No usar clips de 15 segundos** si el prompt es complejo → el AI inventa más. Preferir 8-10s.
- **No hacer cambios bruscos de cámara** entre clips → el AI pierde coherencia y alucina.
- **No subir imágenes de personajes con fondos complejos** → el AI copia el fondo y lo mezcla. Usar siempre fondo blanco.
- **No confiar en que el AI mantendrá la identidad facial sola** → siempre subir grid de múltiples ángulos como referencia.
- **No usar el mismo prompt para todas las escenas** → ajustar el prompt para cada clip, añadiendo "extiende desde último frame" cuando corresponda.
- **No olvidar especificar "misma iluminación, mismo atuendo, misma identidad facial"** en el prompt de extensión.