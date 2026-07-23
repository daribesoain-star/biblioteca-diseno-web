# Deploy Your SvelteKit App Using Vercel And Supabase
**Fuente:** Joy of Code | https://youtu.be/uAF4Yd-gddo

## Qué enseña (2-3 líneas)
Cómo desplegar una aplicación full-stack SvelteKit con base de datos PostgreSQL en Supabase y hosting en Vercel. Cubre desde la creación del proyecto, configuración de Prisma, despliegue en Vercel, hasta optimización con cabeceras de caché HTTP y prerenderizado estático.

## Técnicas y patrones accionables

- **Crear proyecto desde plantilla:**
  ```bash
  pnpx degit joyofcode/sveltekit-deploy .
  ```
  (copia el repositorio de GitHub sin historial)

- **Instalar dependencias:**
  ```bash
  pnpm install
  ```

- **Configurar variable de entorno local:**
  Renombrar `.env.example` a `.env` y agregar la cadena de conexión de Supabase (pooling connection string desde Project Settings > Database).

- **Sincronizar esquema Prisma con Supabase (prototipado rápido):**
  ```bash
  pnpx prisma db push
  ```
  (crea las tablas en Supabase sin usar migraciones)

- **Instalar adaptador de Vercel para SvelteKit:**
  ```bash
  pnpm add -D @sveltejs/adapter-vercel
  ```

- **Configurar adaptador en `svelte.config.js`:**
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';
  // ... resto de configuración
  ```

- **Verificar build local antes de desplegar:**
  ```bash
  pnpm run build
  pnpm run preview
  ```
  (expone errores de task runners antes del deploy)

- **Desplegar en Vercel:**
  1. Ir a [vercel.com](https://vercel.com) > "Add New Project"
  2. Importar repositorio de GitHub
  3. Agregar variable de entorno `DATABASE_URL` con la cadena de conexión de Supabase
  4. Presionar "Deploy"

- **Establecer cabeceras de caché en `+page.server.ts`:**
  ```typescript
  import type { PageServerLoad } from './$types';

  export const load: PageServerLoad = async ({ setHeaders }) => {
    setHeaders({
      'cache-control': 'max-age=0, s-maxage=3600' // 1 hora en CDN
    });
    // ... lógica de carga
  };
  ```

- **Prerenderizar página estática y desactivar JavaScript en `+page.server.ts`:**
  ```typescript
  export const prerender = true;
  export const csr = false;
  ```

- **Cache condicional por antigüedad del contenido:**
  ```typescript
  // Ejemplo conceptual: si el post tiene más de 7 días, cachear para siempre
  if (post.publishedAt < Date.now() - 7 * 24 * 60 * 60 * 1000) {
    setHeaders({ 'cache-control': 'public, max-age=31536000, immutable' });
  }
  ```

- **Establecer caché en endpoints standalone (RSS):**
  ```typescript
  // En el handler del endpoint
  return new Response(rssXml, {
    headers: {
      'Content-Type': 'application/xml',
      'cache-control': 'max-age=0, s-maxage=3600'
    }
  });
  ```

## Reglas para el erudito (imperativas y verificables)

- Usa `pnpm` como gestor de paquetes por defecto (recomendación del autor).
- Usa `pnpx degit` para clonar plantillas sin historial de git.
- Usa `prisma db push` solo para prototipado; en producción usa `prisma migrate`.
- Usa `setHeaders` desde `PageServerLoad` para definir cabeceras HTTP en rutas SvelteKit.
- Usa `s-maxage` para cachear en CDN compartido (Vercel Edge Network).
- Usa `max-age=0` para evitar caché en navegador cuando se usa `s-maxage`.
- Usa `export const prerender = true` para páginas estáticas que no necesitan servidor.
- Usa `export const csr = false` para páginas que no necesitan JavaScript del lado cliente.
- Nunca compartas el archivo `.env` ni la contraseña de Supabase en repositorios públicos.
- Nunca despliegues sin ejecutar `pnpm run build` localmente primero para detectar errores.
- Nunca uses `s-maxage` en rutas de dashboard o contenido dinámico que requiera datos frescos siempre.

## Errores comunes / gotchas que menciona

- **Error de build en Vercel:** No entrar en pánico; el log de build en Vercel es el mismo que el local (`pnpm run build`). Leer el error y buscar en Google.
- **Error interno en dashboard después del deploy:** Puede deberse a que el sitio necesita "asentarse" (esperar unos minutos). Revisar logs en Vercel > Deployment > Functions.
- **Confundir `max-age` con `s-maxage`:** `max-age` controla caché del navegador; `s-maxage` controla caché del CDN compartido. Usar `max-age=0` cuando se usa `s-maxage` para evitar doble caché.
- **Pre-renderizado no funciona con form actions:** Si una página usa form actions de SvelteKit, no se puede prerenderizar porque requieren un servidor.
- **No olvidar agregar variable de entorno `DATABASE_URL` en Vercel antes de desplegar:** Si se omite, el build falla o la app no puede conectar a la base de datos.
- **Usar cadena de conexión de pooling en Supabase:** Específicamente para entornos serverless, para evitar problemas de conexiones concurrentes.