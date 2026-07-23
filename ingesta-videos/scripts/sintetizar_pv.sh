#!/bin/zsh
# sintetizar_pv.sh — map-reduce de la ola páginas-vendedoras. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
PV=$BASE/paginas-vendedoras
cd $PV
files=($PV/destilado/*.md(N))
echo "destilados totales: ${#files[@]}"
# ── MAP: chunks de 10 → parciales ──
i=0; chunk=0; grupo=()
procesar_chunk() {
  local n=$1; shift
  local out=$PV/sintesis/parcial_$n.md
  [[ -s $out ]] && return
  cat > /tmp/pvs_$n.txt << P
Adjunto varios destilados sobre las mejores páginas web del mundo (diseño que vende, estilos únicos, conversión). Extrae EN ESPAÑOL NEUTRO los bullets más accionables y específicos, agrupados en: ESTILOS ÚNICOS QUE VENDEN (tipologías de diseño con sitios ejemplo) · PATRONES DE CONVERSIÓN (mecánicas probadas con números) · POR SECCIÓN (hero / producto / checkout / social proof). Cada bullet TERMINA con (Fuente: título — URL) copiando la URL EXACTA del destilado. Nada vago, nada inventado: si no está en los adjuntos, no existe. Solo el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/pvs_$n.txt $out "$@" >/dev/null 2>&1
  rm -f /tmp/pvs_$n.txt
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
OUT=$PV/sintesis/SINTESIS_PAGINAS_VENDEDORAS.md
if [[ ! -s $OUT ]]; then
  cat > /tmp/pvr.txt << P
Adjunto síntesis parciales de una ingesta mundial sobre "páginas que venden solas con estilos únicos". Fusiónalas EN ESPAÑOL NEUTRO en UN documento maestro sin duplicados, estructura EXACTA:
# Páginas que venden solas — doctrina mundial (ingesta 2026-07-22)
## 1. Estilos únicos que venden (tipologías, cada una con sitios ejemplo y su mecanismo)
## 2. Patrones de conversión probados (con números/benchmarks)
## 3. Por sección: hero · página de producto · checkout · prueba social
## 4. Reglas para agentes (imperativas, verificables)
## 5. Errores comunes (anti-patrones)
## Fuentes (lista única de URLs citadas)
Conserva las citas (Fuente: título — URL) EXACTAS de los parciales. NO inventes fuentes ni datos. Solo el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/pvr.txt $OUT $PV/sintesis/parcial_*.md >/dev/null 2>&1
  rm -f /tmp/pvr.txt
fi
echo "síntesis: $(wc -w < $OUT 2>/dev/null) palabras"
touch $PV/SINTESIS_DONE
