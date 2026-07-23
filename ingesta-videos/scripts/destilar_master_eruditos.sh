#!/bin/zsh
# destilar_master_eruditos.sh — procesa los canales de la OLA ERUDITOS con 3 workers (destilar_uno.sh)
# Mismo patrón que destilar_master.sh; NO toca los canales de las olas anteriores.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
PEND=/tmp/pendientes_eruditos.txt
: > $PEND
for CANAL in eruditos-sueltos PaddyGalloway GrowMyAds daradenney AnalyticsMania Optmyzr FilmBooth CreatorInsider ColinandSamir; do
  D=$BASE/canales/$CANAL
  [[ -d $D ]] || continue
  KEEP=$BASE/canales/keep_$CANAL.txt
  for vtt in $D/*.vtt(N); do
    id=$(basename $vtt); id=${id%.en.vtt}; id=${id%.es.vtt}
    grep -q "^$CANAL $id$" $PEND 2>/dev/null && continue
    [[ -f $KEEP ]] && ! grep -q "^$id$" $KEEP && continue
    [[ -s $BASE/destilado/$CANAL/$id.md ]] && continue
    echo "$CANAL $id" >> $PEND
  done
done
echo "$(date +%H:%M:%S) PENDIENTES-ERUDITOS: $(wc -l < $PEND | tr -d ' ')"
xargs -P3 -n2 $BASE/scripts/destilar_uno.sh < $PEND
echo "$(date +%H:%M:%S) === MASTER ERUDITOS TERMINADO ==="
for c in eruditos-sueltos PaddyGalloway GrowMyAds daradenney AnalyticsMania Optmyzr FilmBooth CreatorInsider ColinandSamir; do
  [[ -d $BASE/destilado/$c ]] && echo "$c: $(ls $BASE/destilado/$c | wc -l | tr -d ' ') destilados"
done
