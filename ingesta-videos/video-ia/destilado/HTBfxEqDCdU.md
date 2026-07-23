# This Is How To Use Kling 3.0 Like A PRO (The Only Guide You Need)
**Fuente:** Sebastien Jefferies | https://youtu.be/HTBfxEqDCdU

## Qué enseña
Tutorial completo para dominar Kling 3.0 en Higsfield, cubriendo desde multi-shot narratives con lip sync hasta edición avanzada con OmniEdit (relighting, swapping de objetos, reencuadre). Incluye flujos para consistencia de personaje mediante Elements y generación de ángulos múltiples con Angles 2.0.

## Técnicas accionables
- **Modelos exactos:** Kling 3.0, Kling 3.0 Omni (OmniEdit), Kling 3.0 (estándar), Kling 2.6 (versión anterior). Acceso desde Higsfield: hover a Video → Model → Kling → seleccionar versión.
- **Estructura de prompt para multi-shot (simple):**  
  Shot 1: `man says in brackets [Hollywood is officially cooked]`  
  Shot 2: `change angle to side profile and man says [because now you can have multi-shot videos]`  
  Shot 3: `change angle to a front closeup of the man and he says [from a single image]`  
- **Estructura de prompt para multi-shot (complejo con Elements):**  
  Shot 1: `windy day on the mountain in, male lead says with irresistible smile [Kling 3.0 can generate multi-shot scenes in one go]`  
  Shot 2: `camera pans to reveal second character, Margot Robbie says [Wait, you're telling me this is just from one image?] cinematic quality, handheld camera feel`  
  Shot 3: `pans back to @Deadpool saying [Guys, come on. I don't have all day.]`  
- **Uso de @ para referenciar personajes:** `@Seb`, `@Margot`, `@Deadpool` (Kling reconoce personajes icónicos sin elemento). Para personajes propios, crear Elements con imágenes de referencia.
- **Creación de Elements:** Arrastrar 1-3 imágenes del personaje (recomienda: close-up, full body shot, side profile). Nombrar (ej. "Seb"). Usar prompt `briefly describe the man in this image` → copiar descripción generada → pegar en campo de descripción → Generate.
- **Generación de ángulos múltiples:** En Elements, subir imagen base → botón "Generate from 12 best angles" (cuesta 2.4 créditos). O usar Nano Banana Pro GPT con prompt: `take the framing and start from image one and replace the man to be the one from image two`.
- **Parámetros de video:** Duración hasta 15 segundos. Aspect ratios: 16:9, 9:16, 1:1. Resolución ajustable (hasta 1080p). Multi-shot: hasta 6 shots (reduciendo a 2 segundos por shot).
- **Cálculo de timing para multi-shot:** Decir las frases en voz alta para medir duración. Ejemplo: "Hollywood is officially cooked" ≈ 4s, "because now you can have multi-shot videos" ≈ 3s, "from a single image" ≈ 2s. O usar ChatGPT: pegar guion y preguntar duración estimada por frase.
- **OmniEdit (Kling 3.0 Omni):** Subir video → prompt `restyle @video but change the background to be a snowy mountain` (dejar settings en Auto). Para más control: generar imagen de referencia con Nano Banana Pro → en Omni, prompt `restyle @video with the style of @image`.
- **Image-to-video simple (sin multi-shot):** Subir imagen → deshabilitar multi-shot → prompt `man bends down, looks into the camera and says [All right, listen up dummies because this is how movies get made now]`.
- **First frame + Elements:** Arrastrar imagen como first frame, habilitar multi-shot, agregar Elements para cada personaje. Usar `@start frame` para referenciar la imagen inicial.
- **GPTs recomendados:**  
  - Para imágenes: Nano Banana Pro (en ChatGPT Explore GPTs). Ejemplo de uso: `Give me a prompt recreate this exact same image, but change the woman to Margot Robbie`.  
  - Para videos: "Kling 3.0 prompt generator" (enlace en descripción). Ejemplo: `take this image and mimic the emotion that the man has, probably shouting, and then describe what I want to say`.

## Reglas para el erudito
- **Usa Elements siempre que quieras consistencia de personaje y movimientos de cámara realistas** – Kling tiene más datos para trabajar y replica movimientos de cámara reales.
- **Usa @nombre cuando el personaje sea icónico** (Deadpool, Margot Robbie) – Kling ya tiene datos de referencia, no necesitas crear elemento.
- **Usa 3 imágenes por elemento** (close-up, cuerpo completo, perfil) – son las más importantes según pruebas extensas.
- **Usa el cálculo de timing oral** para multi-shot – di las frases en voz alta para determinar segundos por shot.
- **Usa "Generate from 12 best angles"** en Elements para obtener múltiples ángulos sin escribir prompts.
- **Usa OmniEdit con imagen de referencia** para mayor control sobre relighting, swapping de objetos, reencuadre y limpieza de video.
- **Usa Nano Banana Pro GPT** para generar prompts de imagen con estructura detallada (cinematic, wardrobe, top frame, environment, lighting, camera lens, style).
- **Usa el Kling 3.0 prompt generator GPT** para prompts de video optimizados.

## Errores comunes / limitaciones que menciona
- **No complicar el prompting en multi-shot** – se puede hacer de forma simple sin estructuras complejas.
- **No olvidar ajustar la duración** – aunque Kling analiza el texto y entiende cambios de shot, es mejor definir timings exactos.
- **No subestimar Elements** – "no one's talking about it, but if you want realistic cinematic looking videos with consistency, you need to be using elements".
- **No usar solo first frame sin Elements** – el video con first frame + Elements es más realista que solo first frame.
- **En early access, tiempos de espera largos** – se acelerarán a partir del 10 de febrero según los desarrolladores.
- **No esperar que Kling reconozca personajes no icónicos sin elemento** – para personajes propios, crear Elements con imágenes de referencia.