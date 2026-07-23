#!/bin/zsh
# sintetizar_ck.sh — map-reduce de la ola canales-kids (crecer+monetizar kids/fauna). Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CK=$BASE/canales-kids
mkdir -p $CK/sintesis
cd $CK
files=($CK/destilado/*.md(N))
echo "destilados totales: ${#files[@]}"
# ── MAP: chunks de 10 → parciales ──
chunk=0; grupo=()
procesar_chunk() {
  local n=$1; shift
  local out=$CK/sintesis/parcial_$n.md
  [[ -s $out ]] && return
  cat > /tmp/cks_$n.txt << P
Adjunto varios destilados sobre CRECER y MONETIZAR canales de contenido (TikTok, YouTube Shorts, Instagram Reels, Facebook, Threads) con foco en contenido infantil/familiar/animales. Extrae EN ESPAÑOL NEUTRO los bullets más accionables y específicos, agrupados en: TIKTOK (crecimiento cuenta pequeña + monetización) · YOUTUBE (Shorts, canal kids, Made for Kids, RPM) · INSTAGRAM/FACEBOOK/THREADS · MONETIZACIÓN DE IP INFANTIL (licensing, libros, merch, marcas, casos con cifras). Cada bullet TERMINA con (Fuente: título — URL) copiando la URL EXACTA del destilado. Nada vago, nada inventado: si no está en los adjuntos, no existe. Solo el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/cks_$n.txt $out "$@" >/dev/null 2>&1
  rm -f /tmp/cks_$n.txt
  echo "parcial $n listo ($(wc -w < $out 2>/dev/null) palabras)"
}
for f in $files; do
  grupo+=($f)
  if (( ${#grupo[@]} == 10 )); then
    procesar_chunk $chunk $grupo
    grupo=(); (( chunk++ ))
  fi
done
(( ${#grupo[@]} > 0 )) && procesar_chunk $chunk $grupo

# ── REDUCE: fusión + dedup ──
OUT=$CK/sintesis/SINTESIS_CANALES_KIDS.md
if [[ ! -s $OUT ]]; then
  cat > /tmp/ckr.txt << P
Adjunto síntesis parciales de una ingesta mundial sobre "crecer y monetizar canales de contenido kids/fauna". Fusiónalas EN ESPAÑOL NEUTRO en UN documento maestro sin duplicados, estructura EXACTA:
# Crecer y monetizar canales kids/fauna — doctrina mundial (ingesta 2026-07-22)
## 1. TikTok — crecimiento rápido de cuenta pequeña + monetización (incluye Douyin/China)
## 2. YouTube — Shorts, canal kids, Made for Kids, RPM y alternativas
## 3. Instagram Reels · Facebook · Threads
## 4. Monetización de IP infantil (licensing, libros, merch, marcas; casos con cifras)
## 5. Reglas para agentes (imperativas, verificables, con umbrales numéricos)
## 6. Errores comunes (anti-patrones)
## Fuentes (lista única de URLs citadas)
Conserva las citas (Fuente: título — URL) EXACTAS de los parciales. NO inventes fuentes ni datos. Solo el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/ckr.txt $OUT $CK/sintesis/parcial_*.md >/dev/null 2>&1
  rm -f /tmp/ckr.txt
fi
echo "síntesis: $(wc -w < $OUT 2>/dev/null) palabras"
touch $CK/SINTESIS_DONE
