#!/usr/bin/env zsh
set -euo pipefail

echo "Este script iniciará os serviços com Docker Compose."
echo "Antes de continuar, confirme que você alterou OPEN_NOTEBOOK_ENCRYPTION_KEY no docker-compose.yml."
echo ""
read "confirm?Digite START para continuar: "

if [ "$confirm" != "START" ]; then
  echo "Operação cancelada."
  exit 1
fi

docker compose config >/tmp/open-notebook-compose-check.yml
docker compose up -d
docker compose ps

echo ""
echo "Aguarde alguns segundos e acesse:"
echo "Web UI: http://localhost:8502"
echo "API docs: http://localhost:5055/docs"
