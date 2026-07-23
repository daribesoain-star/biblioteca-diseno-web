# This ONE Prompt Creates Flawless Consistent Characters Sheets
**Fuente:** hf_ola2 | https://youtu.be/2psBexPkw3I

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield AI integra el modelo **Nano Banana 2** para generar hojas de referencia de personajes consistentes desde múltiples ángulos (8 tomas: 4 cuerpo completo + 4 primeros planos). Luego combina esas hojas con **Kling AI** (Omni Reference) para videos donde el personaje no se deforma al girar, caminar o cambiar de plano. La clave está en que la hoja de referencia muestre al personaje desde direcciones opuestas para que el modelo entienda correctamente las rotaciones.

## Tips y flujos accionables

### 1. Crear la Character Reference Sheet (Nano Banana 2 en Higgsfield)
- **Ruta exacta:** Higgsfield AI → Image Generator → seleccionar modelo **Nano Banana 2**.
- **Prompt VERBATIM (copiar y pegar):**
  ```
  Create a professional character reference sheet of a female Viking character with red hair. The sheet should be divided into four vertical columns, each showing the character from a different angle: front view, left side profile, back view, right side profile. In each column, include a full body shot at the top and a close-up portrait of the face at the bottom. All images should be photorealistic, shot on a DSLR camera with muted color tones and 35mm film aesthetic.
  ```
- **Clave de realismo:** Siempre añadir al final del prompt: `photorealistic, DSLR camera, muted color tones, 35mm film`.
- **Problema común:** Las vistas laterales (left/right profile) suelen salir mirando al mismo lado.
- **Solución paso a paso:**
  1. Descargar la hoja incorrecta.
  2. Subirla como **image reference** en Nano Banana 2.
  3. Prompt de corrección: `"Change the character reference sheet so that the full body shot of the male Viking character in the third column faces the opposite direction."`
  4. Generar de nuevo.

### 2. Generar imágenes consistentes de múltiples personajes
- **Subir referencias:** Usar el **Reference Image Uploader** de Nano Banana 2 (hasta 14 imágenes, pero la consistencia baja con más de 2-3 personajes).
- **Prompt ejemplo:**
  ```
  The two Viking warriors sitting beside each other on the ground, weapons resting ready, catching their breath after a battle with subtle eye contact and a calm but serious mood. Photorealistic, shot on a DSLR camera with muted colors and 35mm film.
  ```
- **Para personajes propios:** Subir la imagen original como referencia y modificar el prompt: `"Create a professional character reference sheet based on the uploaded image"` + el resto del prompt de la hoja.

### 3. Video consistente con Kling AI + Omni Reference
- **Plataforma:** Kling AI (no Higgsfield para video, pero se integra).
- **Función exacta:** **Omni Reference** (subir múltiples imágenes de referencia).
- **Flujo:**
  1. Subir 3 imágenes: hoja de referencia del personaje A, hoja del personaje B, y una imagen generada de ambos juntos (el frame inicial del video).
  2. En el prompt, referenciar cada imagen por su etiqueta (Image 1, Image 2, Image 3).
- **Prompt VERBATIM para video:**
  ```
  The woman from image 3 and the man from image 2 walk forward side by side through the forest in image 1. They move steadily along the path. The woman scans the trees to her left while the man keeps his gaze forward. Leaves slightly shift in the wind. Cut to a side profile shot of the two characters walking through the forest.
  ```
- **Truco anti-corte a la hoja de referencia:** Al final del prompt añadir: `"The scene ends with them on the battlefield inside image 1"` (o la escena que corresponda).

### 4. Parametros recomendados
- **Modelo imagen:** Nano Banana 2 (único recomendado para hojas de referencia).
- **Modelo video:** Kling AI con Omni Reference.
- **Estilo:** Siempre `photorealistic, DSLR camera, muted colors, 35mm film`.
- **Número de referencias:** Máximo 3 para buena consistencia en video.

## Reglas para el erudito de Higgsfield

- **Para crear hoja de referencia de personaje:** usa el preset **Nano Banana 2** en Higgsfield Image Generator con el prompt de 4 columnas (front, left profile, back, right profile) + `photorealistic, DSLR camera, muted color tones, 35mm film`.
- **Para corregir direcciones incorrectas en la hoja:** descarga la hoja, súbela como image reference en Nano Banana 2 y usa el prompt `"Change the character reference sheet so that the [full body/close-up] shot of the [character description] in the [column number] column faces the opposite direction"`.
- **Para generar imágenes de múltiples personajes:** sube hasta 3 hojas de referencia al Reference Image Uploader de Nano Banana 2 y describe la escena con `photorealistic, DSLR camera, muted colors, 35mm film` al final.
- **Para video consistente:** usa **Kling AI** con la función **Omni Reference**, sube las hojas de referencia + un frame inicial, y en el prompt referencia cada imagen por su etiqueta (`image 1`, `image 2`, `image 3`). Siempre termina el prompt con `"The scene ends with them in [situation] inside image [número]"` para evitar que el video corte a la hoja de referencia.
- **Para personajes propios:** sube la imagen original como referencia y usa el prompt `"Create a professional character reference sheet based on the uploaded image"` + el resto del prompt estándar.

## Errores comunes / que evitar

- **No verificar que las vistas laterales miren en direcciones opuestas:** Si ambos perfiles miran al mismo lado, la consistencia en videos con rotaciones falla. Siempre revisar y corregir con el método de subir la hoja y pedir el cambio de dirección.
- **Usar más de 3 personajes en una misma escena:** La consistencia se degrada notablemente. Máximo 2-3 personajes para resultados sólidos.
- **Olvidar añadir el final de escena en el prompt de video:** Si no dices `"The scene ends with them in [situación] inside image [número]"`, Kling AI cortará aleatoriamente a la hoja de referencia al final del video.
- **No incluir palabras de realismo en el prompt:** Sin `photorealistic, DSLR camera, muted colors, 35mm film`, Nano Banana 2 genera imágenes con estilo por defecto menos realista, lo que arruina la base para todo el flujo.
- **Usar una sola imagen de referencia para generar videos con rotaciones:** Si solo tienes un frente del personaje, al girar en el video se deformará. La hoja de 8 tomas es obligatoria para rotaciones complejas.
- **Confiar en que Nano Banana 2 entiende direcciones perfectamente:** Siempre revisar y corregir manualmente; el modelo falla en distinguir izquierda/derecha en perfiles.