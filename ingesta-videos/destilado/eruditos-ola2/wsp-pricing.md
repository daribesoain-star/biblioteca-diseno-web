# Pricing oficial de WhatsApp Business Platform (Meta)
**Fuente:** https://developers.facebook.com/docs/whatsapp/pricing/ (consultada 2026-07-09)

## Qué es / qué regula
Documento oficial que explica el modelo de precios por mensaje de la plataforma de WhatsApp Business, vigente desde el 1 de julio de 2025. Regula cómo Meta cobra a las empresas por el envío de mensajes de plantilla, las categorías de plantillas, los niveles de volumen, los intervalos de servicio al cliente y las tarifas según país o región.

## Reglas y datos duros para agentes
- **Modelo de cobro**: Meta cobra por mensaje de plantilla entregado (`"type":"template"`). No se cobran mensajes que no son de plantilla (`"type":"text"`, `"type":"image"`, etc.).
- **Categorías de plantillas**: Marketing, Utilidad, Autenticación.
- **Tarifas**: Varían según categoría de plantilla, nivel de volumen y código de llamada del país del destinatario.
- **Mensajes gratuitos**:
  - Mensajes que no son de plantilla (solo dentro de un intervalo de servicio al cliente abierto).
  - Plantillas de utilidad entregadas dentro de un intervalo de servicio al cliente abierto.
  - Todos los mensajes durante 72 horas si se envían dentro de un intervalo gratuito desde punto de acceso (FEP).
- **Intervalo de servicio al cliente (CSW)**: 24 horas desde el último mensaje del usuario.
- **Intervalo gratuito desde punto de acceso (FEP)**: 72 horas, se abre cuando la empresa responde a un mensaje iniciado por clic a WhatsApp o botón de llamada a la acción en Facebook (Android/iOS). Mientras esté abierto, cualquier mensaje es gratuito.
- **Niveles de volumen**: Se aplican a mensajes de utilidad y autenticación. Se acumulan a nivel de portfolio comercial (todas las WABA del portfolio). Solo cuentan mensajes cobrados. Se restablecen cada mes (00:00 zona horaria de la WABA).
- **Calendario de precios**: Meta actualiza precios solo el primer día de cada trimestre (1 enero, 1 abril, 1 julio, 1 octubre).
  - Actualización de hoja de tarifas: aviso de 1 mes.
  - Complemento del modelo de precios: aviso de 3 meses.
  - Cambio de modelo de precios: aviso de 6 meses.
- **Divisas de facturación disponibles**: USD, AED, ARS, AUD, BRL, CLP, COP, EUR, GBP, IDR, INR, MXN, MYR, PEN, SAR, SGD.
- **Tarifas de autenticación internacional**: Algunos países tienen tarifas internacionales de autenticación específicas.
- **Códigos de llamada por país**: Los cargos se basan en el código de llamada del país del destinatario. Países listados individualmente: Argentina (54), Brasil (55), Chile (56), Colombia (57), Egipto (20), Francia (33), Alemania (49), Hong Kong (852), Hungría (36), India (91), Indonesia (62), Israel (972), Italia (39), Malasia (60), México (52), Países Bajos (31), Nigeria (234), Pakistán (92), Perú (51), Polonia (48), Qatar (974), Rumania (40), Rusia (7), Arabia Saudita (966), Singapur (65), Sudáfrica (27), España (34), Turquía (90), Emiratos Árabes Unidos (971), Reino Unido (44). Regiones: Norteamérica (Canadá, EE.UU. - código 1), Resto de África, Resto de Asia-Pacífico, Resto de Europa Central y Oriental, Resto de Europa Occidental, Resto de Latinoamérica, Resto de Medio Oriente, Otro.
- **Webhooks por nivel**: Desde 1 octubre 2025, webhook `account_update` con `event` = `VOLUME_BASED_PRICING_TIER_UPDATE` cuando se alcanza un nuevo nivel de volumen.
- **Precio máximo (API de mensajes de marketing)**: Desde 2026, las empresas pueden configurar un precio máximo por entrega de mensaje de marketing.
- **Facturación localizada**: Brasil (BRL) desde 1 julio 2026; migración obligatoria antes del 30 junio 2027. India (INR) desde 1 enero 2026; migración obligatoria antes del 31 diciembre 2026.
- **Actualizaciones de tarifas desde 1 julio 2026**: Hong Kong, Hungría, Italia, Polonia, Qatar, Rumania, Singapur, España, Reino Unido (cambios específicos detallados en el texto).
- **Actualizaciones desde 1 octubre 2026**: Bangladesh, Irak, Nepal, Sri Lanka (reducción utilidad/autenticación); Kazajistán, Kuwait, Marruecos, Omán, Ucrania (aumento utilidad/autenticación).

## Errores que evita / prohibiciones
- **No cobrar mensajes no entregados**: Solo se cobra cuando se entrega un mensaje de plantilla.
- **No cobrar mensajes sin plantilla**: Son gratuitos solo dentro de un intervalo de servicio al cliente abierto.
- **No cobrar plantillas de utilidad dentro de CSW**: Son gratuitas si el CSW está abierto.
- **No cobrar mensajes dentro de FEP**: Todos los mensajes son gratuitos durante 72 horas desde punto de acceso.
- **No usar categoría incorrecta**: Las empresas son responsables de revisar la categoría asignada a sus plantillas aprobadas; al usar una plantilla aceptan los cargos de esa categoría.
- **No depender indebidamente de datos estadísticos**: Meta determina los niveles de volumen; todos los datos son aproximados por variaciones en procesamiento.
- **No usar webhooks duplicados como oficiales**: Si hay varios webhooks para el mismo cambio de nivel, usar el de marca de tiempo `tier_update_time` más pequeña.
- **No enviar mensajes sin plantilla fuera de CSW**: Solo se pueden enviar mensajes de plantilla fuera del intervalo de servicio al cliente.
- **No ignorar migración de divisas**: Clientes en Brasil deben migrar a BRL antes del 30 junio 2027; en India a INR antes del 31 diciembre 2026, o Meta dejará de entregar mensajes.