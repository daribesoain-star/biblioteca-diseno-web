# How to use Higgsfield AI for Beginners (Step by Step 2026)
**Fuente:** hf_tutorial | https://youtu.be/Pjw8nnxHo5I

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield es una plataforma de video AI que convierte prompts e imágenes en videos cinematográficos mediante un flujo de trabajo visual basado en nodos (Canvas). Permite generar desde cero o combinar imágenes propias, modelos virtuales y fondos, usando modelos como Cedance 2.0 para video de alta fidelidad, con control de duración, resolución, dimensiones y audio.

## Tips y flujos accionables

### Configuración inicial
1. Visitar web, click **Sign up** (Google, Apple o email)
2. Ir a **Canvas** → click **Create Canvas**
3. Construir flujo de nodos (gratis hasta generar)

### Flujo de generación de imagen
1. **Click derecho** en canvas → seleccionar **Image Generator**
2. Prompt ejemplo (VERBATIM): *"A luxury scented candle in an elegant glass jar with minimalist branding placed on a premium beige stone surface. Soft natural lighting, warm shadows, clean modern aesthetic, high-end commercial product photography, realistic wax texture, cinematic composition, luxury lifestyle branding, ultra-realistic 4K detail"*
3. Ajustar: **AI model**, **aspect ratio**, **resolution**, **batch size**
4. Click **Generate**

### Flujo de generación de video
1. Añadir **Prompt node** al canvas
2. Conectar nodos de imágenes (producto, modelo virtual, fondo) al Prompt node
3. Prompt ejemplo: *"Create an ultra-realistic cinematic commercial of a person using the product"*
4. Añadir **Video Generation node**
5. Configurar:
   - **AI model:** Cedance 2.0
   - **Duration:** según necesidad
   - **Resolution:** seleccionar la más alta
   - **Dimensions:** Square/Vertical (Instagram), Landscape (YouTube), Vertical (TikTok)
   - **Audio generation:** ON
   - **Batch size:** según necesidad
6. Click **Generate** o **Run pipeline** para procesar todo el flujo

### Trucos clave
- **Negative prompts:** añadir palabras como *deformed, extra fingers, blurry* para evitar alucinaciones
- **Run pipeline:** comando maestro que procesa todos los nodos conectados de una vez
- **Guardar canvas como template** para reutilizar flujos exitosos
- **Colaboración:** compartir link para edición en tiempo real con equipo

## Reglas para el erudito de Higgsfield

- Para **imágenes de producto**: usa **Image Generator** con prompt detallado de estilo comercial, resolución 4K, iluminación suave
- Para **modelos virtuales**: genera por separado con descripción precisa de edad, etnia, vestimenta, pose y fondo limpio
- Para **fondos**: genera por separado con descripción de ambiente, tonos de color, iluminación y estilo
- Para **video final**: usa **Cedance 2.0** como modelo, resolución máxima, dimensiones según plataforma, audio ON
- Para **evitar glitches**: siempre incluye negative prompts con *deformed, extra fingers, blurry*
- Para **flujo completo**: conecta todos los nodos de imagen al Prompt node, luego al Video Generation node, y usa **Run pipeline**

## Errores comunes / que evitar

- **Generar cada elemento por separado**: usar **Run pipeline** para procesar todo el flujo de una vez
- **No usar negative prompts**: provoca alucinaciones como dedos extraños o deformidades
- **Prompts demasiado cortos**: ser específico con estilo, iluminación, texturas y composición
- **Ignorar dimensiones**: seleccionar según plataforma destino (vertical para TikTok, landscape para YouTube)
- **No guardar templates**: perder flujos optimizados que podrían reutilizarse
- **Pensar que es complicado**: el flujo de nodos es visual y se aprende en una tarde