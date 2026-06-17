---
command: /deploy
description: Recria e reinicia os serviços Docker no ambiente local de forma segura.
---

# Fluxo de Deploy Local

Ao invocar este workflow, realize:

1. **Validação**: Verifique se `.env` está configurado corretamente.
2. **Checagem**: Rode `docker compose config` para assegurar sintaxe correta do docker-compose.
3. **Aprovação**: Solicite explicitamente aprovação humana (conforme regra do `AGENTS.md`) antes de continuar.
4. **Execução**: Somente após aprovação, execute `docker compose up --build -d`.
5. **Monitoramento**: Faça poll dos containers com `docker compose ps` e exiba as portas ativas (Web UI em `8502`, API em `5055`).
