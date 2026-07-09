# Using Replicate deployments for more control over your models (Part 1 of 2) [replicate]
**Fuente:** ola4-herramientas | https://youtu.be/-F63qOsd9BI

## Qué enseña (2-3 líneas)
Cómo migrar una app que usa un modelo público de Replicate a un "deployment" propio para tener control sobre el tipo de GPU, la escalabilidad y separar el uso del token API personal. Se muestra el proceso completo: crear el deployment, instalar el cliente npm de Replicate, reemplazar las llamadas HTTP raw por el cliente oficial y ajustar el código para crear predicciones sin esperar el resultado.

## Lecciones accionables
- Para crear un deployment en Replicate: navegar al modelo deseado (ej. `instruct-pix2pix`), hacer clic en "Deploy", elegir nombre (ej. `paint-by-text`), seleccionar la versión del modelo, cambiar el tipo de GPU (ej. de A100 a A40), definir mínimo de instancias (ej. `1` para evitar cold starts) y máximo (ej. `5` para controlar costos).
- Instalar el cliente oficial de Replicate: `npm install replicate` (o el comando equivalente para el gestor de paquetes que uses).
- Inicializar el cliente en el código: `const replicate = new Replicate({ auth: process.env.REPLICATE_API_TOKEN, userAgent: "mi-app/1.0" })`.
- Para usar un deployment en lugar de un modelo público, la sintaxis es: `const prediction = await replicate.deployments.predictions.create({ deployment: "owner/deployment-name", input: { /* inputs del modelo */ } })`.
- No usar `await` en el endpoint que crea la predicción si la app ya tiene un sistema de polling separado; solo crear la predicción y devolver su ID para que el frontend o un worker haga el polling.
- Configurar la variable de entorno `REPLICATE_API_TOKEN` con un token específico para el deployment (creado desde la página de API tokens de Replicate), no usar el token personal.
- Para mantener una instancia siempre activa y evitar cold starts, establecer `min_instances` en `1` al crear el deployment.

## Reglas para agentes
- Usa `replicate.deployments.predictions.create()` en lugar de `replicate.predictions.create()` cuando el modelo esté desplegado como deployment.
- Nunca uses `await` en la creación de la predicción dentro del mismo handler si la app ya tiene lógica de polling separada; solo crea la predicción y devuelve su estado.
- Siempre especifica `userAgent` al inicializar el cliente Replicate para trazabilidad.
- Usa `let` en lugar de `const` para la variable `prediction` si necesitas reasignarla después de crearla.
- Define `REPLICATE_API_TOKEN` como variable de entorno con un token dedicado al deployment, no el token personal.
- Para evitar cold starts en demos, configura `min_instances: 1` en el deployment.

## Errores comunes que evita o menciona
- **Error 422 "invalid version or not permitted"**: ocurre cuando el token API no corresponde al deployment o no tiene permisos. Solución: asegurarse de usar el token específico del deployment y no el token personal.
- **Error "cannot reassign to a variable declared with const"**: ocurre si se intenta reasignar `prediction` después de crearla con `const`. Solución: usar `let` en su lugar.
- **Cold starts en demos**: si `min_instances` se deja en `0`, la primera predicción puede tardar mucho. Solución: establecer `min_instances: 1` para mantener una instancia siempre activa.
- **Usar el token personal en apps públicas**: expone el token y mezcla el uso de la cuenta. Solución: crear un token específico para el deployment desde la página de API tokens.