#!/bin/zsh
# destilar_master.sh — procesa TODOS los canales pendientes con 3 workers Codex
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
SKIP="WdYYW9mBLAc ArVhVSvykzE"
PEND=/tmp/pendientes_destilar.txt
: > $PEND
for CANAL in nextmindrevolution imskaigenerated jennjagerpro mundoaudiovisual; do
  D=$BASE/canales/$CANAL
  [[ -d $D ]] || continue
  KEEP=$BASE/canales/keep_$CANAL.txt
  for vtt in $D/*.vtt(N); do
    id=$(basename $vtt); id=${id%.en.vtt}; id=${id%.es.vtt}
    grep -q "^$CANAL $id$" $PEND 2>/dev/null && continue
    [[ " $SKIP " == *" $id "* ]] && continue
    [[ -f $KEEP ]] && ! grep -q "^$id$" $KEEP && continue
    [[ -s $BASE/destilado/$CANAL/$id.md ]] && continue
    echo "$CANAL $id" >> $PEND
  done
done
echo "$(date +%H:%M:%S) PENDIENTES: $(wc -l < $PEND)"
xargs -P3 -n2 $BASE/scripts/destilar_uno.sh < $PEND
echo "$(date +%H:%M:%S) === MASTER TERMINADO ==="
for c in nextmindrevolution imskaigenerated jennjagerpro mundoaudiovisual; do
  [[ -d $BASE/destilado/$c ]] && echo "$c: $(ls $BASE/destilado/$c | wc -l) destilados"
done
