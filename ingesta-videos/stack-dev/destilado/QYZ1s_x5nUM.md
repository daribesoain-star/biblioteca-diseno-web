# SvelteKit 1.0 is here! (Deploying to Vercel)
**Fuente:** Vercel | https://youtu.be/QYZ1s_x5nUM

## Qué enseña (2-3 líneas)
Introducción a SvelteKit 1.0, sus características principales (SSR, enrutamiento basado en directorios, layouts, load function) y despliegue en Vercel con integración Git, preview deployments, rollbacks instantáneos y Edge Functions. También cubre los cambios breaking de la versión 1.0 respecto a versiones anteriores.

## Técnicas y patrones accionables

- **Despliegue desde template de Vercel:** Ir al marketplace de templates de Vercel, buscar "SvelteKit", seleccionar template y hacer clic en "Deploy".
- **Integración Git nativa:** Vercel soporta GitHub, GitLab y Bitbucket. Al hacer push a una rama, Vercel detecta el commit, construye y despliega automáticamente.
- **Preview deployments:** Al pushear a una rama que no sea `main`, Vercel genera una URL de preview con un toolbar para compartir y dejar comentarios.
- **Promover a producción:** Desde el dashboard de Vercel, usar los tres puntos → "Promote to Production" para llevar una rama a producción sin mergear a `main`.
- **Rollback instantáneo:** En el dashboard, tres puntos sobre un deployment → "Roll back" para revertir al deployment anterior sin reconstruir la aplicación.
- **Analytics:** Agregar Vercel Analytics al proyecto para visualizar Core Web Vitals, total de page views, top pages y browsers.
- **Serverless Functions automáticas:** Al desplegar en Vercel, las funciones serverless se configuran automáticamente. Se pueden ver los logs de funciones en el dashboard.
- **Edge Functions:** SvelteKit soporta Edge Functions de Vercel para ejecutar JavaScript en la red edge global, sirviendo páginas renderizadas dinámicamente a velocidad de CDN.

**Cambios de SvelteKit 1.0 (nuevo sistema de archivos):**
- **Rutas basadas en directorios:** Antes: `about.svelte` creaba `/about`. Ahora: se usa `+page.svelte` dentro de una carpeta `about/`.
- **Archivo de layout:** Antes: `__layout.svelte`. Ahora: `+layout.svelte`.
- **Layouts agrupados:** Carpetas con paréntesis `(grupo)` no afectan la ruta pero actúan como rutas raíz para layouts anidados.
- **Load function movida a endpoint:** Antes se definía en un bloque `<script context="module">` dentro del page component. Ahora se exporta desde un archivo `+page.js` (o `+page.server.js`) hermano del `+page.svelte`.

**Ejemplo de load function (nueva forma):**
Archivo `routes/vercel/+page.js`:
```js
export function load() {
  return {
    // datos a pasar a la página
  };
}
```
Archivo `routes/vercel/+page.svelte`:
```svelte
<script>
  export let data;
</script>
<!-- data está tipada fuertemente -->
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `+page.svelte`** en lugar de `index.svelte` o `about.svelte` para definir rutas.
- **Usa `+layout.svelte`** en lugar de `__layout.svelte` para layouts compartidos.
- **Usa carpetas con paréntesis `(grupo)`** cuando necesites agrupar layouts sin afectar la URL.
- **Define la load function en `+page.js` o `+page.server.js`** (archivo hermano del page component), no en un bloque `context module`.
- **Exporta `data` como prop** en el componente Svelte para recibir los datos retornados por `load`.
- **Para deploy en Vercel:** usa el template marketplace, integración Git, o CLI/API. No requiere configuración manual de serverless functions.
- **Para rollback:** usa el botón "Roll back" en el dashboard de Vercel (no requiere rebuild).
- **Para preview deployments:** haz push a cualquier rama que no sea `main`.

## Errores comunes / gotchas que menciona

- **Cambio de nomenclatura de archivos:** Si vienes de versiones anteriores, `index.svelte` ya no funciona; debes usar `+page.svelte`. Similarmente, `__layout.svelte` se reemplaza por `+layout.svelte`.
- **Load function ya no va en context module:** El bloque `<script context="module">` dentro del page component fue eliminado. La load function ahora debe estar en un archivo separado (`+page.js` o `+page.server.js`).
- **Named layouts eliminados:** Ya no se pueden tener múltiples layouts en un mismo directorio con nombres como `index@about.svelte`. Se reemplazan por layouts agrupados con paréntesis.
- **Compatibilidad con versiones anteriores:** Hubo múltiples breaking changes; se recomienda revisar la migration guide oficial para una lista completa.