```markdown
# Delta — diseno-sonoro-audio-para-video

## Reglas nuevas propuestas
- Para ducking de reverberación vocal, enruta el bus de reverberación como destino y sidechainéalo a la señal vocal seca; usa las funciones "tail suppression" y "tail recovery" en reverberaciones Exponential Audio para que la cola se reduzca mientras la voz está presente y se recupere entre frases. (fuente: izotope.com)
- Al configurar audio ducking en un compresor, activa el modo "Sidechain to Ext Full" para que el compresor reciba la señal externa como disparador; ajusta Threshold, Attack, Release y Ratio para afinar la cantidad y el carácter del bombeo. (fuente: izotope.com)
- Para subir audio a YouTube, usa contenedor MP4, codec AAC-LC/Opus/Eclipsa Audio, frecuencia de muestreo 48 kHz, y coloca el moov atom al inicio del archivo (Fast Start); no incluyas Edit Lists. (fuente: support.google.com/youtube)
- Para audio estéreo en YouTube, usa bitrate de 384 kbps; para 5.1, 512 kbps; para Eclipsa Audio inmersivo, 128 kbps por canal. (fuente: support.google.com/youtube)

## Errores nuevos propuestos
- Aplicar ducking de forma excesiva o sin control de ataque/liberación, generando un efecto de bombeo no deseado o poco natural. (fuente: izotope.com)
- Incluir Edit Lists en el archivo de video para YouTube, lo que impide el procesamiento correcto del video. (fuente: support.google.com/youtube)
- Usar frecuencias de muestreo distintas a 48 kHz en el audio subido a YouTube. (fuente: support.google.com/youtube)

## Contradicciones detectadas
- Ninguna.
```