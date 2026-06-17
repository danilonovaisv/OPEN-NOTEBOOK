---
name: docker-orchestration
description: Instruções e práticas para gerenciar containers do Open Notebook via Docker Compose.
---

# Docker Orchestration Skill

O ambiente local do "Open Notebook" é orquestrado via Docker Compose. Você NÃO deve utilizar comandos destrutivos sem aprovação.

## Comandos Permitidos e Encorajados:
- Checar status dos serviços: `docker compose ps`
- Ver os logs (ex: backend): `docker compose logs open_notebook --tail=100 -f`
- Validar configuração do compose: `docker compose config`

## Comandos que EXIGEM APROVAÇÃO (Regra Global):
- Iniciar serviços: `docker compose up -d` ou `docker compose up --build -d`
- Parar serviços: `docker compose down`
- Limpeza: `docker system prune`

## Variáveis de Ambiente Importantes
- O backend exige a variável `OPEN_NOTEBOOK_ENCRYPTION_KEY` definida para encriptação de API Keys.
- Certifique-se de que o `.env` existe baseado no `.env.example`.
