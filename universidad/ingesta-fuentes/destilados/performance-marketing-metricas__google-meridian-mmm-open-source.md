# Google Meridian — MMM Open Source
**Materia:** performance-marketing-metricas | **Fuente:** https://github.com/google/meridian (consultada 2026-07-07)
## Qué aporta (2-3 líneas)
Framework de código abierto de Google para modelado de mezcla de marketing (MMM) basado en inferencia causal bayesiana. Permite a anunciantes ejecutar modelos in-house que miden el impacto de canales de marketing en KPIs, optimizan asignación presupuestaria y soportan calibración con experimentos, usando datos agregados sin cookies ni información a nivel de usuario.

## Reglas candidatas para agentes
- Usar Python 3.11, 3.12 o 3.13 para instalar Meridian.
- Ejecutar el modelo en al menos 1 GPU (T4 con 16 GB de RAM probada oficialmente).
- Instalar con `pip install --upgrade google-meridian[and-cuda]` para usuarios Linux-GPU con CUDA toolchain y GPU compatible.
- Instalar con `pip install --upgrade google-meridian` para macOS y CPU general (sin soporte oficial de GPU en macOS).
- Para versión no publicada desde GitHub en GPU: `pip install --upgrade "google-meridian[and-cuda] @ git+https://github.com/google/meridian.git"`.
- Para versión no publicada desde GitHub en CPU: `pip install --upgrade git+https://github.com/google/meridian.git`.
- Instalar en un entorno virtual limpio para evitar conflictos de dependencias.
- Usar el muestreador No U Turn Sampler (NUTS) para el enfoque MCMC holístico del modelo.
- Utilizar datos a nivel geo si están disponibles; si no, se puede usar modelado a nivel nacional.
- Incorporar datos de alcance y frecuencia para optimizar la frecuencia objetivo de anuncios.

## Errores comunes que documenta
- No se documentan errores comunes específicos en el README; la fuente remite a las pestañas "Issues" y "Discussions" del repositorio de GitHub para reportar bugs y compartir consejos.
- El equipo de Meridian responde a issues semanalmente en lotes, no de forma inmediata.
- Los pull requests son difíciles de fusionar porque el código está vinculado a sistemas internos de Google y debe pasar revisión interna.

## Datos/citas clave textuales
- "Meridian is an MMM framework that enables advertisers to set up and run their own in-house models."
- "Meridian is a highly customizable modeling framework that is based on Bayesian causal inference."
- "Python 3.11-3.13 is required to use Meridian. We also recommend using a minimum of 1 GPU."
- "Note: This project has been tested on T4 GPU using 16 GB of RAM."
- "The Meridian model uses a holistic MCMC sampling approach called No U Turn Sampler (NUTS)."
- Versión citada: 1.7.0 (año 2026).
- "MMM is privacy-safe and does not use any cookie or user-level information."
- "Meridian provides methodologies to support calibration of MMM with experiments and other prior information, and to optimize target ad frequency by utilizing reach and frequency data."