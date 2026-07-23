#!/bin/zsh
# sintetizar.sh — map-reduce delegado a DeepSeek. 2 chunks tematicos -> parciales -> tesis-insumo.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/eruditos-herramientas/color-frozen-almacen
LLAMAR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts/llamar_ia.py
D=$BASE/destilado
S=$BASE/sintesis
mkdir -p $S

# CHUNK A: psicologia del color por color + apetito/frio/frescura
cat > /tmp/prA.txt << 'PROMPT'
Eres analista senior de branding de color para RETAIL DE ALIMENTOS (congelados + minimarket/almacen). Abajo van varios destilados de fuentes sobre psicologia del color. Sintetiza EN ESPAÑOL NEUTRO una seccion accionable, SIN inventar nada (solo lo que este en los destilados), con esta estructura:

## Psicologia del color en food retail (por color)
Para CADA color (rojo, naranja, amarillo, verde, azul, blanco, negro, cafe/kraft/terracota) un bloque de 2-4 bullets: que evoca, si estimula o corta el apetito, cuando usarlo en food retail, y CITA la fuente (URL) del destilado de donde sale cada afirmacion fuerte.
## Apetito vs frio (la tension del rubro)
Bullets sobre: que colores estimulan hambre (rojo/naranja/amarillo) y por que; que colores dicen frio/frescura/limpieza (azul/blanco/plata) y su riesgo (azul corta apetito); como se resuelve. Cita fuentes.

Responde SOLO el markdown. Cada afirmacion importante lleva "(Fuente: URL)".
PROMPT
python3 $LLAMAR /tmp/prA.txt $S/parcial_A.md \
  $D/colorpsy-red.md $D/colorpsy-green.md $D/colorpsy-blue.md \
  $D/colormeanings-warmcool.md $D/forty8-food-color.md $D/glbc-label-color.md \
  $D/jenndavid-foodsales.md $D/tracegains-foodcolor.md $D/wiki-color-psy.md \
  $D/shopify-color-psy.md $D/tubik-color.md > /dev/null 2>&1
echo "parcial_A: $([[ -s $S/parcial_A.md ]] && echo OK || echo FALLO)"

# CHUNK B: marcas reales + congelado packaging + carne + combinaciones + tendencias 2025
cat > /tmp/prB.txt << 'PROMPT'
Eres analista senior de branding de color para RETAIL DE ALIMENTOS. Abajo van destilados sobre marcas reales (colores verificados con hex), packaging de congelados, y color de carne/almacen. Sintetiza EN ESPAÑOL NEUTRO, SIN inventar (solo lo de los destilados), con esta estructura:

## Color en marcas de CONGELADOS (tabla con evidencia)
Lista marca por marca: color(es) dominante(s) + hex si esta + que comunica + fuente URL. (McCain, Iceland, Birds Eye/Findus/Iglo, Picard, Stouffer's, Ben&Jerry's/Haagen-Dazs). Cierra con el patron: el congelado NO obliga a azul frio; hay tres familias (azul-frio, rojo/amarillo-energia, premium-oscuro).
## Color en ALMACEN / CONVENIENCE
Marca por marca (Trader Joe's, Whole Foods, 7-Eleven, Oxxo, Aldi, Lidl, Kroger): color + que comunica + fuente. Patron: convenience tiende a calido/energia (rojo/naranja/amarillo) y a verde-natural; el amarillo señala economico.
## Frio + carne (equilibrio)
Bullets: como equilibrar el rojo de la carne (apetito) sin caer en rojo agresivo de carniceria; rol del blanco/negro/madera/burdeos. Cita fuentes.
## Combinaciones ganadoras frio+calido
Como mezclar un color frio (congelado) con uno calido/natural (almacen) sin romper; rol del color de acento. Cita fuentes.

Responde SOLO el markdown. Cada afirmacion importante lleva "(Fuente: URL)".
PROMPT
python3 $LLAMAR /tmp/prB.txt $S/parcial_B.md \
  $D/_marcas-hechos-verificados.md $D/pouches-frozen.md $D/wiki-stouffers.md \
  $D/wiki-lidl.md $D/colorpsy-red.md $D/colorpsy-green.md $D/colormeanings-warmcool.md \
  $D/forty8-food-color.md $D/jenndavid-foodsales.md > /dev/null 2>&1
echo "parcial_B: $([[ -s $S/parcial_B.md ]] && echo OK || echo FALLO)"
rm -f /tmp/prA.txt /tmp/prB.txt
