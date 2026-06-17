# Prompt para Google Antigravity — OPEN-NOTEBOOK

Você está atuando como Agent IDE no repositório OPEN-NOTEBOOK:

https://github.com/lfnovo/open-notebook.git

## Objetivo

Preparar, validar e documentar a execução local do Open Notebook no macOS usando Docker Compose, com suporte a OpenAI/ChatGPT, outros provedores cloud e opção local com Ollama.

## Leitura obrigatória

Antes de qualquer alteração, leia:

1. `README.md`
2. `AGENTS.md`
3. `docker-compose.yml`
4. `.context/project-brief.md`
5. `.context/setup-notes.md`
6. `.context/deploy-plan.md`
7. `.context/security-notes.md`
8. Arquivos de configuração existentes no repositório

## Regras

- Use o README como fonte primária.
- Não invente comandos, versões, scripts, package managers, modelos ou serviços.
- Quando algo não estiver confirmado, escreva: `⚠️ Verificar: motivo`.
- Não salve API keys reais em arquivos.
- Não execute comandos destrutivos.
- Não altere banco de dados sem aprovação humana.
- Não rode migrations, seeds, reset ou deploy sem aprovação humana.
- Antes de alterar `docker-compose.yml`, apresente plano, impacto, risco e rollback.
- Antes de executar qualquer comando que suba serviços, peça aprovação.
- Antes de instalar dependências, peça aprovação.
- Antes de apagar qualquer arquivo, peça aprovação.

## Escopo permitido agora

Pode executar:

```zsh
docker --version
docker compose version
docker compose config
docker compose ps
docker compose logs --tail=120
curl -I http://localhost:8502
curl -I http://localhost:5055/docs
```

Pode criar ou revisar:

- `.context/*`
- `ops/*`
- `AGENTS.md`
- `.env.example`
- `scripts/validate-open-notebook.sh`

## Tarefas

1. Confirmar a stack real a partir do README.
2. Validar `docker-compose.yml`.
3. Confirmar portas `8502`, `5055` e `8000`.
4. Confirmar volumes persistentes.
5. Verificar se `.gitignore` protege `.env`, dados locais e modelos.
6. Propor correção de `.gitignore` se necessário, sem aplicar sem aprovação.
7. Criar checklist de execução local.
8. Criar checklist de deploy remoto.
9. Sugerir melhor rota de deploy com storage persistente.
10. Entregar relatório com riscos e próximos passos.

## Critérios de sucesso

- Docker Compose válido.
- Serviços sobem após aprovação.
- Web UI acessível em `http://localhost:8502`.
- API docs acessível em `http://localhost:5055/docs`.
- Provider OpenAI configurado pela interface.
- Primeiro notebook criado.
- Primeira fonte adicionada.
- Chat responde com contexto.
