# AGENTS.md — OPEN-NOTEBOOK

## Objetivo

Preparar, executar, validar e evoluir o Open Notebook com segurança, priorizando Docker Compose, uso com OpenAI/ChatGPT, outros provedores de IA e opção local com Ollama.

## Leitura obrigatória antes de qualquer alteração

Antes de alterar arquivos, executar instalações ou propor refatorações, leia:

1. `README.md`
2. `docker-compose.yml`
3. `.context/project-brief.md`
4. `.context/setup-notes.md`
5. `.context/deploy-plan.md`
6. `.context/security-notes.md`
7. `ops/prompts/google-antigravity.md`
8. Arquivos de configuração existentes no repositório

## Escopo permitido sem aprovação humana

Pode executar apenas ações não destrutivas:

- Ler arquivos
- Criar ou editar arquivos dentro de `.context/`
- Criar ou editar arquivos dentro de `ops/`
- Criar ou editar `.env.example`
- Criar scripts não destrutivos dentro de `scripts/`
- Executar:
  - `docker --version`
  - `docker compose version`
  - `docker compose config`
  - `docker compose ps`
  - `docker compose logs --tail=120`
  - `curl -I http://localhost:8502`
  - `curl -I http://localhost:5055/docs`

## Exige aprovação humana explícita

Nunca execute sem aprovação explícita:

- `docker compose up -d`
- `docker compose down`
- `docker compose restart`
- Instalação de dependências
- Alteração de `docker-compose.yml`
- Alteração de portas
- Alteração de variáveis de ambiente sensíveis
- Migrações
- Seeds
- Reset de banco
- Exclusão de arquivos
- Exclusão de volumes
- Deploy externo
- Alteração de autenticação
- Configuração de domínio
- Configuração de TLS
- Uso de API keys reais

## Comandos proibidos sem confirmação escrita

- `rm -rf`
- `docker system prune`
- `docker volume rm`
- `docker compose down -v`
- Reset de banco de dados
- Qualquer comando que apague dados persistentes

## Segurança

- Nunca escreva API keys reais em arquivos.
- Nunca commite `.env`.
- Nunca commite volumes, banco local, arquivos de notebook ou modelos locais.
- Use apenas placeholders em exemplos.
- Antes de qualquer deploy público, validar autenticação, TLS, backup e logs.
