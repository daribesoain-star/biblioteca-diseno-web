# ANCLA — Pipeline de ingesta de videos de especialistas → Biblioteca de Diseño

**Objetivo:** bajar videos/canales de YouTube e Instagram de especialistas (diseño, motion, IA visual, edición, foto), transcribirlos, VERLOS (keyframes) y destilarlos en lecciones accionables que alimentan la KB `kb-videos-especialistas.json` del MCP kb-diseno (y por esa vía a todos los agentes y al STUDIO FlorBeS).

**Leer PRIMERO al retomar. Estado al 2026-07-07 ~20:00.**

## Fuentes encargadas por Dari (2026-07-07)

| Fuente | Contenido | Estado |
|---|---|---|
| 3 reels IG (Wonder&Render, abhishekk.aep, JoshT) + video Envato + 2 de AI Mind Revolution | motion/tipografía cinética/DaVinci/plantillas/IA | ✅ destilados CON análisis visual de frames (`destilado/*.md`) |
| @nextmindrevolution (60 videos) | Google Flow, Nano Banana, Kling, Midjourney, estilos IA | subs ✅ · destilación en curso |
| @imskaigenerated (38) | workflows IA: ads, UGC, motion Vox-style, Claude+Higgsfield | subs ✅ · destilación en curso |
| @jennjagerpro (192 → 144 tras triage) | Final Cut Pro, Apple Motion | descarga subs en curso |
| @mundoaudiovisual (444 → 279 tras triage) | edición, color DaVinci, drones, foto | descarga subs en curso |

## Arquitectura (multi-IA §2.7: Codex hace el volumen, Claude cura, council QA)

```
ingesta-videos/
├── videos/<id>/            # ola 1: mp4/webm + transcript.txt + frames/ + info.json
├── canales/<canal>/        # <id>.en.vtt|.es.vtt + <id>.info.json + archivo.txt (resume yt-dlp)
│   ├── canal_<canal>.txt   # inventario id|dur|título de TODO el canal
│   └── keep_<canal>.txt    # IDs aprobados por triage (solo canales grandes)
├── destilado/<canal>/<id>.md   # 1 destilado por video (Codex)
├── destilado/<id>.md           # ola 1 (con análisis visual)
└── scripts/
    ├── limpiar_vtt.py      # VTT → texto plano sin duplicados rolling
    ├── bajar_subs.sh <canal>        # canal completo
    ├── bajar_subs_lista.sh <canal>  # solo IDs de keep_<canal>.txt
    ├── destilar_uno.sh <canal> <id> # 1 video → Codex → .md (lock anti-duplicado)
    └── destilar_master.sh  # barre TODOS los canales pendientes, 3 workers paralelos
```

## Cómo retomar / operar

1. **¿Faltan subtítulos?** `./scripts/bajar_subs_lista.sh <canal>` (usa keep + archivo.txt, reanudable, sleep anti-429).
2. **¿Faltan destilados?** `nohup ./scripts/destilar_master.sh >> destilado/master.log 2>&1 &` — idempotente: salta lo ya hecho, procesa lo nuevo. Progreso: `tail destilado/master.log`.
3. **Canal/video nuevo de Dari:** mismo flujo — inventario con `yt-dlp --flat-playlist`, triage (Codex decide keep), bajar subs, master. Instagram: agregar `--cookies-from-browser chrome`. Sin subs → audio + ElevenLabs Scribe (`~/.secrets/elevenlabs.env`). Piezas muy visuales → keyframes ffmpeg (`fps=1/25` YT, `fps=1/2.5` reels) + subagente Claude que los VE.
4. **Síntesis KB (fase final):** agrupar destilados por tema → Codex redacta borrador de entrada → Claude cura → council QA → `kb-videos-especialistas.json` (esquema de kb-contenido-materias: id, disciplina, area, titulo, que_ensena, reglas_para_agentes, errores_comunes + fuentes_videos con URLs) → re-embeber en index.html → deploy GitHub Pages.

## Decisiones y gotchas

- **Gemini CLI MUERTO** (2026-07-07): Google deprecó el free tier → exige migrar a Antigravity. Todo el volumen se rutea a **Codex** (`codex exec -s read-only -o <archivo> -` con prompt por stdin = escribe directo a disco, cero tokens Claude).
- Triage Codex conservó 423/636 en canales grandes (fuera vlogs/noticias/<120 s).
- yt-dlp a veces NO escribe todos los .info.json → los scripts iteran por `.vtt` y sacan el título de `canal_<canal>.txt` (fallback).
- 429 de YouTube en subtítulos: SIEMPRE `--sleep-requests 4`.
- MCP `mcp/server.mjs` ya tiene la base `videos` registrada (apunta a `kb-videos-especialistas.json`, tolera que aún no exista).
- index.html embebe las KBs como constantes JS inline (`KB_DATA`, `CARRERAS_DATA`, …) — al crear la KB nueva hay que re-embeberla ahí también.
