```markdown
# Delta — performance-marketing-metricas

## Reglas nuevas propuestas
- Al implementar un MMM (modelado de mezcla de marketing) con Google Meridian, usa al menos 1 GPU (T4 con 16 GB RAM probada) y Python 3.11-3.13; instala en entorno virtual limpio con `pip install --upgrade google-meridian[and-cuda]` para Linux-GPU o `pip install --upgrade google-meridian` para CPU/Mac. (fuente: github.com/google/meridian)
- Para calibrar un MMM con datos de alcance y frecuencia, incorpóralos en el modelo de Meridian para optimizar la frecuencia objetivo de anuncios; no uses solo datos agregados de gasto sin frecuencia. (fuente: github.com/google/meridian)
- Al ejecutar el modelo MCMC de Meridian, usa el muestreador No U Turn Sampler (NUTS) como enfoque holístico; no lo reemplaces por un muestreo más simple sin validar. (fuente: github.com/google/meridian)
- Para datos geográficos en MMM, prioriza el modelado a nivel geo si están disponibles; si no, usa modelado a nivel nacional como alternativa válida. (fuente: github.com/google/meridian)

## Errores nuevos propuestos
- Instalar Meridian sin GPU en entornos Linux donde se requiere aceleración: el modelo MCMC con NUTS puede fallar por falta de memoria o tardar horas en converger; usa al menos 1 GPU T4. (fuente: github.com/google/meridian)
- No crear un entorno virtual limpio antes de instalar Meridian: las dependencias (TensorFlow, JAX, etc.) entran en conflicto con paquetes existentes y rompen la instalación. (fuente: github.com/google/meridian)

## Contradicciones detectadas
SIN-CONTRADICCIONES
```