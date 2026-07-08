1. **Regla vaga:** "Usa un Claude Project con memoria persistente de voz de marca, nicho, audiencia y objetivos; incluye URLs de competidores reales en el contexto."
   *   **Corrección:** Especificar qué es "memoria persistente" en este contexto (¿un documento de sistema? ¿un archivo de instrucciones?) y cómo se configura exactamente. La instrucción "incluye URLs de competidores reales" es demasiado abierta; debería indicar qué tipo de URLs (homepage, blog, redes sociales) y con qué propósito.

2. **Regla vaga:** "Usa WhisperFlow para producción intensiva de texto; usa comandos de transformación como 'Make this more professional' o 'Turn this into bullet points' sobre texto seleccionado."
   *   **Corrección:** "WhisperFlow" no es una herramienta estándar o ampliamente conocida. Si es una herramienta específica, necesita una breve descripción de qué es o un enlace. Si es un error, podría ser "Whisper" (de OpenAI) u otra herramienta de transcripción. La regla es genérica y no explica cómo se integra en el flujo.

3. **Regla vaga:** "Usa Notebook LM cuando tengas fuentes largas (PDFs, papers, enlaces de YouTube) que deban resumirse o convertirse en audio overviews."
   *   **Corrección:** "Notebook LM" es una herramienta de Google, pero la regla no especifica si se refiere a la versión de Google (NotebookLM) o a otra. Además, la instrucción es demasiado general; no indica cómo se conecta con el resto del flujo de automatización (Claude + Higgsfield).

4. **Afirmación sospechosa de alucinación:** "Usa Telegram Connector en Higgsfield Supercomputer para generar videos desde el teléfono sin abrir la plataforma; crea un bot con Botfather y pega el token."
   *   **Corrección:** No hay evidencia pública de que Higgsfield Supercomputer tenga un "Telegram Connector" oficial. Esta funcionalidad podría ser una integración de terceros no documentada o una alucinación. Se debe verificar la existencia de esta característica en la documentación oficial de Higgsfield.

5. **Afirmación sospechosa de alucinación:** "Usa GPT image two cuando la imagen tenga texto visible (carousels, quote posts, infografías); configura en 1x1, 4K, batch size 1."
   *   **Corrección:** "GPT image two" no es un modelo de generación de imágenes conocido. Podría referirse a "DALL-E 2" (de OpenAI) o a una confusión con "GPT-4V" (visión). No existe un modelo llamado "GPT image two". Se debe corregir por el nombre correcto del modelo.

6. **Regla duplicada/contradictoria:** "Nunca publiques videos de IA totalmente automatizados, repetitivos o producidos en masa; incluye input humano verificable (outline, revisión, edición manual)." vs. "Programa con /schedule en Co-work solo después de validar que una ejecución manual produce un short correcto; mantén la app abierta y el equipo despierto si la tarea debe ejecutarse exactamente a una hora local."
   *   **Corrección:** La primera regla prohíbe la automatización total, pero la segunda instruye sobre cómo programar la automatización. Aunque la segunda incluye una validación manual previa, la contradicción es confusa. Se debe aclarar que la automatización programada está permitida *solo* si hay supervisión humana en el proceso de revisión y aprobación final, no solo en la validación inicial.

7. **Regla vaga:** "Usa un skill diferente para cada tipo de video (cine, animación, producto, diálogo); nunca uses una fórmula única para todos."
   *   **Corrección:** La regla es correcta en concepto, pero no proporciona criterios específicos para definir qué hace único a cada "skill". ¿Qué parámetros exactos debe contener un skill de "cine" vs. uno de "animación"? Sin ejemplos concretos, la regla es difícil de implementar.

8. **Afirmación sospechosa de alucinación:** "Usa Nano Banana 2 antes de pasarla a Seedance 2.0; especifica silent, auto-playing, looping con short delay between plays al añadir video al sitio."
   *   **Corrección:** "Nano Banana 2" y "Nano Banana Pro" aparecen como herramientas de generación de imágenes. No hay información verificable sobre su existencia o integración con Seedance 2.0. Podría ser una herramienta de nicho o una alucinación. Se debe verificar su existencia y funcionalidad.

9. **Regla vaga:** "Mantén constante la voz y el estilo de delivery entre segmentos de talking head; bloquea tipo de voz y dirección de escena al inicio de cada prompt."
   *   **Corrección:** ¿Cómo se "bloquea" exactamente el tipo de voz? ¿Se usa un identificador de voz específico de una herramienta (ej. "voice_id_123" en ElevenLabs) o una descripción textual? La regla necesita un mecanismo concreto para garantizar la consistencia.

10. **Regla vaga:** "Usa imágenes de referencia del personaje y del workspace cuando una secuencia de B-roll tenga varias tomas para mantener consistencia."
    *   **Corrección:** ¿Qué es "workspace" en este contexto? ¿Se refiere al entorno físico del personaje o a un espacio de trabajo digital? La ambigüedad hace que la regla sea difícil de aplicar. Se debe definir "workspace" y cómo se usa la imagen de referencia.