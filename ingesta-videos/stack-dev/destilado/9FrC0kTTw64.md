# How to deploy Svelte Kit on DigitalOcean App Platform (Vercel and Coolify alternative)
**Fuente:** Elans X | https://youtu.be/9FrC0kTTw64

## Qué enseña
Desplegar una aplicación SvelteKit 5 (con runes) en DigitalOcean App Platform usando el adaptador Node, incluyendo la configuración de repositorio GitHub, ajustes de plataforma (tamaño, región, variables de entorno, puerto) y el proceso de auto-deploy.

## Técnicas y patrones accionables

- **Crear proyecto SvelteKit 5:**
  ```bash
  npx sv create .
  ```
  Seleccionar: `minimal` → sin TypeScript → `tailwind` → `sveltekit-adapter` → gestor de paquetes: `npm`

- **Agregar comando `start` en `package.json`:**
  ```json
  "scripts": {
    "start": "node build/index.js"
  }
  ```

- **Crear repositorio en GitHub (privado) y subir código:**
  ```bash
  git init
  git add .
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/<tu-usuario>/<tu-repo>.git
  git push -u origin main
  ```

- **Configurar DigitalOcean App Platform:**
  1. Click `Create` → `App Platform`
  2. Conectar cuenta GitHub y seleccionar repositorio
  3. Activar `Auto Deploy` (despliegue automático al hacer push)
  4. En `Size` seleccionar `$5/month`
  5. Renombrar app (opcional) y elegir región (ej: Frankfurt)
  6. En `Network` → `Edit` → agregar puerto `3000` (SvelteKit con adaptador Node usa puerto 3000)
  7. Click `Create App`

- **Verificar logs de despliegue:**
  - Ir a la pestaña `Logs` para ver el proceso de build
  - En `Runtime Logs` confirmar: `app is listening on port 3000`

- **Agregar dominio personalizado:**
  - Ir a `Settings` → `Domains` (disponible una vez desplegado exitosamente)

## Reglas para el erudito (imperativas y verificables)

- Usa `npx sv create` para iniciar un proyecto SvelteKit 5, no `npm create svelte`
- Usa el adaptador Node (`sveltekit-adapter`) cuando despliegues en DigitalOcean App Platform
- Configura el puerto `3000` en la sección `Network` de DigitalOcean, nunca otro puerto
- Activa `Auto Deploy` para que cada push a main despliegue automáticamente
- Usa `$5/month` como tamaño mínimo de instancia para ahorrar costos
- Define variables de entorno a nivel de app (afecta todas las instancias) o a nivel de componente (solo esa instancia) según necesidad
- Nunca uses TypeScript si quieres seguir exactamente el tutorial (selecciona "no" cuando pregunte)

## Errores comunes / gotchas que menciona

- **Warnings en logs de build:** "mostly harmless if they are not critical" — no detienen el despliegue
- **Dominio personalizado:** No se puede agregar hasta que la app esté desplegada exitosamente; requiere configuración DNS adicional (no cubierta en el video)
- **Puerto incorrecto:** Si no se configura el puerto 3000 en `Network`, la app no responderá
- **Costo por defecto:** DigitalOcean aplica automáticamente un plan de $24/mes; hay que cambiarlo manualmente a $5/mes en la sección `Size`