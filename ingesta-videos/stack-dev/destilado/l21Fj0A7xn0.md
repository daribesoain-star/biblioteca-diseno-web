# How to Deploy SvelteKit to Vercel
**Fuente:** Brayden Girard | https://youtu.be/l21Fj0A7xn0

## Qué enseña (2-3 líneas)
Cómo desplegar un proyecto SvelteKit en Vercel usando el adaptador oficial `@sveltejs/adapter-vercel`. Cubre la instalación del adaptador, configuración en `svelte.config.js`, inicialización de Git, push a GitHub e importación del repositorio en Vercel para un deploy completo (frontend en CDN + serverless functions).

## Técnicas y patrones accionables

- **Instalar el adaptador de Vercel como dependencia de desarrollo:**
  ```bash
  npm install --save-dev @sveltejs/adapter-vercel
  ```

- **Configurar el adaptador en `svelte.config.js`:**
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';

  const config = {
    kit: {
      adapter: adapter()
    }
  };

  export default config;
  ```

- **Inicializar repositorio Git y hacer commit:**
  ```bash
  git init
  git add .
  git commit -m "vercel deploy"
  ```

- **Conectar repositorio local con GitHub:**
  ```bash
  git remote add origin https://github.com/tu-usuario/vercel-sveltekit.git
  git branch -M main
  git push -u origin main
  ```

- **Desplegar en Vercel:**
  1. Ir a [vercel.com](https://vercel.com)
  2. Crear nuevo proyecto → "Import from Git Repository"
  3. Seleccionar el repositorio de GitHub
  4. No cambiar ninguna configuración → presionar "Deploy"
  5. El build despliega automáticamente:
     - Frontend → CDN de Vercel
     - Server-side code → Serverless Functions de Vercel

- **Verificar el deploy:** Click en "Visit" para abrir la URL temporal asignada por Vercel.

## Reglas para el erudito (imperativas y verificables)

- Usa `npm init svelte@next` para crear un proyecto SvelteKit con la configuración por defecto.
- Instala `@sveltejs/adapter-vercel` como dependencia de desarrollo (`--save-dev`).
- Modifica únicamente `svelte.config.js` para agregar el adaptador; no toques otros archivos de configuración para el deploy básico.
- No cambies ninguna configuración en el dashboard de Vercel al importar el proyecto; los defaults funcionan.
- Asegúrate de que el repositorio de GitHub ya esté creado antes de hacer `git remote add origin`.

## Errores comunes / gotchas que menciona

- No menciona errores específicos en la transcripción. El tutorial es directo y no reporta gotchas.