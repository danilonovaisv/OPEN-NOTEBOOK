# Convenções do Projeto

## Frontend (Next.js / TypeScript)
- Utilizar Server Components sempre que possível.
- Estilizar exclusivamente via Tailwind CSS v4.
- Gerenciamento de estado global com Zustand.
- Componentes baseados em Radix UI. Acessibilidade é prioridade.

## Backend (FastAPI / Python)
- Tipagem estrita: utilizar hints de tipo e validar com Pydantic e Mypy.
- Gestão de dependências moderna com `uv` e `pyproject.toml`.
- Logging estruturado via `loguru`.

## Fluxos de IA (LangGraph)
- Evite loops infinitos nos grafos.
- Use ferramentas com tipagens bem definidas para LLMs.
- Aproveite o checkpointing do LangGraph (SQLite configurado no pyproject) para histórico.

## Mensagens de Commit e Pull Requests
- Seguir o padrão Conventional Commits (feat, fix, chore, docs, refactor).
- PRs devem referenciar a issue correspondente e incluir evidências visuais (se alteração de UI).
