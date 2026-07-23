# Svelte 5 — rune $state (doctrina oficial)
**Fuente:** Svelte Docs oficial | https://svelte.dev/docs/svelte/$state

- Básico: `let count = $state(0)` — se usa como variable JS normal, reactiva.
- **Reactividad profunda por proxy:** `$state([...])`/`$state({...})` crea proxies recursivos; `todos[0].done = x` y `todos.push(...)` disparan updates. Se proxifica hasta topar con clases/objetos no-planos.
- **Gotcha destructuring:** `let { done } = todos[0]` ROMPE la reactividad (se evalúa en el momento). No destructurar estado reactivo que vas a mutar.
- **Clases:** los instances NO se proxifican → usar `$state` en los campos: `class Todo { done = $state(false); constructor(text){ this.text = $state(text); } }`. Los métodos pierden `this` → llamar con arrow: `onclick={() => todo.reset()}` (NO `onclick={todo.reset}`).
- **`$state.raw`:** solo reasignación, sin proxy (menos overhead para estructuras grandes/inmutables): `person = {...}` funciona, `person.age += 1` NO.
- **`$state.snapshot(x)`:** extrae objeto plano (no-proxy) para libs externas / `structuredClone`.
- **Compartir estado entre módulos (pass-by-value):** NO se puede `export let count = $state(0)` + reasignar. Soluciones: (1) exportar objeto y mutar propiedad: `export const counter = $state({count:0}); export function increment(){ counter.count += 1 }`. (2) getter/setter: `export function getCount(){ return count }`.
- Regla: mutar proxy = update granular; reasignar = reemplaza entero.
