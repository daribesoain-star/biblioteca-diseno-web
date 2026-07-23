#!/bin/zsh
# destilar_canal_campanas.sh <canal> — destila análisis/casos de campañas publicitarias con DeepSeek → KB campanas-referencia.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/campanas-referencia
CANAL=$1
CANAL_DIR=$BASE/canales/$CANAL
OUT=$BASE/destilado/$CANAL
mkdir -p $OUT $KB/destilado
cd $CANAL_DIR || exit 1
for info in *.info.json(N); do
  id=${info%.info.json}
  [[ $id == UC* ]] && continue
  [[ -s $OUT/$id.md ]] && continue
  vtt=$(ls $id.*.vtt(N) | head -1)
  [[ -z $vtt ]] && { echo "SIN-SUBS $id"; continue; }
  titulo=$(python3 -c "import json;print(json.load(open('$info')).get('title',''))" 2>/dev/null)
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/cp_$id.txt 2>/dev/null
  [[ $(wc -w < /tmp/cp_$id.txt) -lt 80 ]] && { echo "CORTO $id"; continue; }
  cat > /tmp/prompt_cp_$id.txt <<EOF
Eres estratega creativo publicitario de primer nivel. Destila esta transcripcion del video "$titulo" (analisis o caso de campana publicitaria). EN ESPANOL NEUTRO, estructura markdown EXACTA:
# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Campana(s) y marca(s) analizadas
## Insight humano (la verdad incomoda/universal debajo)
## Estructura / mecanismo narrativo
(mapea a UNA de las 10 leyes si aplica: 1 insight-primero, 2 una-idea-una-frase, 3 flip-contrarian, 4 literalizar-metafora, 5 acumulacion+punchline, 6 auto-critica, 7 presupuesto-es-idea, 8 activos-iconicos, 9 sin-dialogo, 10 idea>presupuesto)
## Por que funciona / que la hace VENDER
## Como se aplicaria a un foodservice B2B (carne por caja, angulo "se vivo, no pagues caro / B2Vio")
Se concreto y accionable. Responde SOLO con el markdown final.
EOF
  python3 $BASE/scripts/llamar_ia.py /tmp/prompt_cp_$id.txt $OUT/$id.md /tmp/cp_$id.txt >> $BASE/destilado/cp_$CANAL.log 2>&1
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
cp -n $OUT/*.md(N) $KB/destilado/ 2>/dev/null
echo "=== $CANAL: $(ls $OUT/*.md(N)|wc -l|tr -d ' ') destilados (KB campanas: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ')) ==="
