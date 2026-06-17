#!/usr/bin/env zsh
set -euo pipefail

echo "== Verificando Docker =="
docker --version
docker compose version

echo ""
echo "== Validando docker-compose.yml =="
docker compose config >/tmp/open-notebook-compose-check.yml
echo "OK: docker-compose.yml válido."

echo ""
echo "== Status dos containers =="
docker compose ps || true

echo ""
echo "== Testando Web UI =="
if curl -fsS -I http://localhost:8502 >/dev/null; then
  echo "OK: Web UI respondeu em http://localhost:8502"
else
  echo "FALHA: Web UI não respondeu em http://localhost:8502"
fi

echo ""
echo "== Testando API docs =="
if curl -fsS -I http://localhost:5055/docs >/dev/null; then
  echo "OK: API docs respondeu em http://localhost:5055/docs"
else
  echo "FALHA: API docs não respondeu em http://localhost:5055/docs"
fi

echo ""
echo "== Logs recentes =="
docker compose logs --tail=120 || true
