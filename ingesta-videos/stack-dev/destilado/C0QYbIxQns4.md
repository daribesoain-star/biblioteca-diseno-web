# How to: Deploy SvelteKit apps to Vercel 🚀
**Fuente:** Johnny Magrippis | https://youtu.be/C0QYbIxQns4

## Qué enseña
Desplegar cualquier app de SvelteKit en Vercel sin tocar archivos de configuración. Cubre el flujo completo desde el repositorio local hasta el deploy automático en producción y preview environments, aprovechando la detección automática del adaptador de Vercel.

## Técnicas y patrones accionables

- **Inicializar Git y commitear todo el proyecto local:**
  ```bash
  git init
  git add .
  git commit -m "Initial commit"
  ```

- **Crear repositorio en GitHub sin inicializar nada** (README, .gitignore, licencia) porque ya tienes todo el código listo para pushear.

- **Vincular repositorio local con GitHub y pushear:**
  ```bash
  git remote add origin <URL_del_repo>
  git branch -M main
  git push -u origin main
  ```

- **Ir al dashboard de Vercel** → "New Project" → seleccionar el repositorio de GitHub recién creado → "Import".

- **No modificar nada en la pantalla de configuración de Vercel.** Vercel detecta automáticamente que es SvelteKit y aplica el adaptador sin necesidad de `svelte.config.js`, `vercel.json` ni ninguna otra configuración.

- **Si la app necesita variables de entorno** (API keys, URLs de base de datos), agregarlas en la sección "Environment Variables" antes de hacer clic en "Deploy". Si no necesita ninguna, simplemente presionar "Deploy".

- **El deploy tarda unos minutos.** Una vez completado, cualquier push a la rama `main` genera automáticamente un nuevo deployment de producción.

- **Cada Pull Request genera un preview environment automático** con su propia URL, ideal para revisión visual y pruebas end-to-end antes de mergear.

- **Verificar el deploy:** Ir al dashboard de Vercel o al enlace del deployment en GitHub para ver la app funcionando, incluyendo rutas API que devuelvan JSON.

## Reglas para el erudito (imperativas y verificables)

- **Usa `git init` y haz commit antes de crear el repo en GitHub.** No dejes que GitHub inicialice nada (README, .gitignore, licencia) porque sobrescribiría tu código local.
- **No toques `svelte.config.js` ni crees `vercel.json`.** SvelteKit 5 detecta Vercel como adaptador automáticamente.
- **Usa el free tier de Vercel para frontends.** Es generoso y no tiene cold starts, a diferencia de Heroku free tier que duerme los servicios.
- **Configura las environment variables en Vercel antes del primer deploy** si tu app las necesita (Stripe, SendGrid, Postgres URL, etc.).
- **Cada push a `main` = deploy automático de producción.** No necesitas triggers manuales.
- **Cada Pull Request = preview environment automático.** Aprovéchalo para revisión visual y tests end-to-end.

## Errores comunes / gotchas que menciona

- **No usar control de versiones:** El wizard de SvelteKit no lo configura automáticamente (a diferencia de Create React App). Olvidar `git init` y commit antes de crear el repo en GitHub rompe el flujo.
- **Inicializar el repo de GitHub con README o .gitignore:** Si lo haces, tendrás conflictos al pushear tu código local porque las historias de Git no coinciden.
- **Asumir que necesitas configurar el adaptador manualmente:** No es necesario. SvelteKit auto-detecta Vercel y aplica el adaptador sin configuración extra.
- **Usar Heroku free tier para frontends:** El cold start (tiempo que tarda en despertar el servicio) es un problema grave para apps que deben responder rápido. Vercel no tiene este problema en su free tier.