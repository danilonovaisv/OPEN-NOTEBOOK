---
command: /lint
description: Verificação de estilo, formatação e tipagem unificada.
---

# Fluxo de Lint e Formatação

Sempre que acionado, verifique a saúde estática do código:

1. **Frontend**:
   - Mude para o diretório `frontend/`.
   - Execute `npm run lint`.
   - Reporte alertas críticos de ESLint ou Typescript.

2. **Backend**:
   - Na raiz do projeto, ative o ambiente virtual ou utilize `uv`.
   - Execute a verificação de código: `ruff check .`
   - Opcionalmente corrija se solicitado com: `ruff check --fix .`
   - Verifique tipagem via `mypy open_notebook/`.
   - *Nota*: `pages/` são ignorados no Mypy de acordo com o `pyproject.toml`.
