#!/usr/bin/env bash
# Requiere MULTABOT_API_KEY en el entorno.
set -euo pipefail
API="https://api.multabot.com.ar"
AUTH="Authorization: Bearer ${MULTABOT_API_KEY}"

# Consultar infracciones por patente
curl -s "$API/v1/infracciones?plate=AB123CD" -H "$AUTH"

# Consultar infracciones por DNI
curl -s "$API/v1/infracciones?document=30123456" -H "$AUTH"

# Crear un monitor para una patente
curl -s -X POST "$API/v1/monitores" -H "$AUTH" -H "Content-Type: application/json" \
  -d '{"plate":"AB123CD"}'

# Listar monitores
curl -s "$API/v1/monitores" -H "$AUTH"
