import sys, re
def limpiar(path):
    lineas, prev = [], None
    for l in open(path, encoding='utf-8'):
        l = l.strip()
        if not l or '-->' in l or l.startswith(('WEBVTT','Kind:','Language:')) or re.match(r'^\d+$', l):
            continue
        l = re.sub(r'<[^>]+>', '', l).strip()
        if l and l != prev:
            lineas.append(l); prev = l
    # dedupe rolling: quitar línea si está contenida en la siguiente
    out = []
    for i, l in enumerate(lineas):
        if i+1 < len(lineas) and l in lineas[i+1]:
            continue
        out.append(l)
    return ' '.join(out)
print(limpiar(sys.argv[1]))
