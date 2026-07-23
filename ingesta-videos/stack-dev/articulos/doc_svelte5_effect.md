# Svelte 5 — rune $effect (doctrina oficial)
**Fuente:** Svelte Docs oficial | https://svelte.dev/docs/svelte/$effect

- Corre DESPUÉS de montar el DOM, y re-corre en un microtask tras cambiar dependencias (batched). NO corre en SSR.
- **Tracking automático** de `$state`/`$derived`/`$props` LEÍDOS síncronamente (incluye lecturas vía funciones). Lo leído tras `await`/`setTimeout` NO se trackea. Depende de reasignación de objeto, no de mutación de propiedad; solo re-corre por lo leído en su ÚLTIMA ejecución (deps condicionales).
- **Cleanup:** retornar función → corre antes de re-ejecutar, al desmontar, o al re-correr el effect padre. Ej: `$effect(() => { const i = setInterval(...); return () => clearInterval(i) })`.
- **`$effect.pre`:** corre ANTES del update del DOM (ej autoscroll/medir antes de pintar).
- **`$effect.root`:** scope manual sin auto-cleanup; retorna `destroy()` para limpiar a mano.
- **⛔ NUNCA usar $effect para sincronizar estado.** Anti-patrón: `$effect(() => { doubled = count*2 })`. Correcto: `let doubled = $derived(count*2)` (o `$derived.by(...)` para lógica compleja). En 5.25+ los derived se pueden sobreescribir directo (optimistic UI) → otro uso de $effect que se elimina.
- **Loops infinitos:** no leer y escribir el mismo `$state` dentro del effect; si es inevitable, envolver la escritura en `untrack()`.
- **Uso legítimo (escape hatch):** analytics, manipulación directa del DOM, integrar libs de terceros, canvas. NO gestión de estado de rutina.
