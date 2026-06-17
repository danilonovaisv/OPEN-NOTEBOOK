#!/usr/bin/env zsh
set -euo pipefail

docker compose ps
docker compose logs --tail=200
