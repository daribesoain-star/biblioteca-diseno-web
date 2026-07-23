#!/bin/bash
# Instalador del hook SessionStart "Paso 0 diseño/mkt" (lo ejecuta Dari manualmente
# porque crear hooks de arranque requiere su autorización explícita).
# Hace 2 cosas: (1) crea el hook y lo registra en settings.json,
# (2) elimina el hook PostToolUse roto de Windows (powershell) que no corre en Mac.
set -e

mkdir -p ~/.claude/hooks
cat > ~/.claude/hooks/session-start-kb-diseno.sh << 'HOOKEOF'
#!/bin/bash
# Paso 0 de toda creación digital + delegación multi-IA (índice maestro de fuentes).
KB="$HOME/Projects/biblioteca-diseno-web/kb-contenido-materias.json"
IDX="$HOME/Projects/biblioteca-diseno-web/INDICE_FUENTES.md"
BIB="$HOME/Projects/estudio-sintetico/biblioteca"
kb=$([ -f "$KB" ] && echo OK || echo x)
msg="PASO 0 DISENO/MKT (obligatorio antes de crear o evaluar CUALQUIER pieza digital — web, UI, grafica, video, audio, campana, landing): (1) activar skill kb-diseno-reglas y consultar kb_reglas(tema) del MCP kb-diseno o el JSON local $KB [$kb]; (2) proyectos STUDIO FlorBeS: consultar ademas $BIB/ (zona-prohibida, estilos, fundamentos); (3) INDICE MAESTRO de todas las fuentes + arsenal multi-IA para DELEGAR la carga de tokens: $IDX (seccion 7 — cada trabajo delega el volumen a la IA especialista, Claude integra). Antes de entregar: checklist errores_comunes de la KB + critico-artes si es grafica + CITAR que reglas se aplicaron (entregable sin regla citada se rechaza en QA). Reglas nuevas van a la KB, no a skills/memorias sueltas."
esc=$(printf '%s' "$msg" | sed 's/"/\\"/g')
printf '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"%s"}}\n' "$esc"
HOOKEOF
chmod +x ~/.claude/hooks/session-start-kb-diseno.sh

python3 - << 'PYEOF'
import json, os
p = os.path.expanduser('~/.claude/settings.json')
d = json.load(open(p))
ss = d['hooks']['SessionStart'][0]['hooks']
cmd = "bash ~/.claude/hooks/session-start-kb-diseno.sh 2>/dev/null || echo '{}'"
if not any(h.get('command') == cmd for h in ss):
    ss.append({"type": "command", "command": cmd, "timeout": 8})
pt = d['hooks'].get('PostToolUse', [])
limpio = [m for m in pt if not any('powershell' in h.get('command', '') for h in m.get('hooks', []))]
if limpio:
    d['hooks']['PostToolUse'] = limpio
else:
    d['hooks'].pop('PostToolUse', None)
json.dump(d, open(p, 'w'), indent=2, ensure_ascii=False)
print('OK: hook Paso 0 registrado en SessionStart + hook PowerShell de Windows eliminado')
PYEOF

bash ~/.claude/hooks/session-start-kb-diseno.sh | head -c 200 && echo " ... [hook probado OK]"
echo "LISTO. El Paso 0 se inyectará en cada sesión nueva de Claude Code."
