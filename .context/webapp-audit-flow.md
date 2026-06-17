# Web App Audit Flow

## Objetivo
Orientar agents na auditoria e correção segura do web app.

## Stack detectada
- **Frontend**: Next.js v16.2.6 (React 19), Tailwind CSS v4, Zustand, Axios, TanStack React Query, i18next.
- **Backend**: Python v3.11/v3.12, FastAPI, Uvicorn, LangChain, LangGraph, Pydantic v2.
- **Banco de Dados**: SurrealDB v2 (conectado via SurrealDB Python SDK e WebSockets).
- **Gerenciador de Dependências**: `uv` para Python (utilizando `pyproject.toml` e `uv.lock`) e npm para Node.js (utilizando `package.json` e `package-lock.json`).

## Arquivos prioritários
Os seguintes arquivos prioritários mencionados no escopo geral de auditoria **não foram encontrados** no repositório:
- `⚠️ Verificar: frontend/services/geminiService.ts não encontrado no repositório.`
- `⚠️ Verificar: frontend/App.tsx não encontrado no repositório.`
- `⚠️ Verificar: frontend/types.ts não encontrado no repositório.`
- `⚠️ Verificar: backend/server.js não encontrado no repositório.`

Os caminhos reais equivalentes encontrados são:
- **Ponto de entrada do Frontend (App Router)**: [frontend/src/app/layout.tsx](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/app/layout.tsx) e [frontend/src/app/page.tsx](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/app/page.tsx).
- **Tipos de dados do Frontend**: Localizados na pasta [frontend/src/lib/types/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/lib/types/) (incluindo `api.ts`, `models.ts`, `search.ts`, `podcasts.ts`, etc.).
- **Ponto de entrada do Backend (FastAPI)**: [api/main.py](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/api/main.py) e [run_api.py](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/run_api.py).
- **Lógica e grafos de IA**: Localizados sob a pasta [open_notebook/graphs/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/open_notebook/graphs/) (ex: `ask.py`, `chat.py`, `source_chat.py`, `transformation.py`).

## Contratos críticos
- **Tipos compartilhados de Chat/Notebook**: Definidos no frontend em [frontend/src/lib/types/api.ts](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/lib/types/api.ts) e mapeados nas rotas do FastAPI (ex: `api/routers/chat.py`, `api/routers/sources.py`).
- **Schemas de IA (Structured Output)**: 
  - O grafo de pesquisa `ask` no backend utiliza a classe Pydantic `Strategy` ([open_notebook/graphs/ask.py](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/open_notebook/graphs/ask.py#L36-L41)) para mapear a resposta estruturada via `PydanticOutputParser`.
  - O frontend consome essa resposta em tempo de execução via Server-Sent Events (SSE) e valida contra a interface `StrategyData` ([frontend/src/lib/types/search.ts](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/lib/types/search.ts#L46-L52)). Ambos contêm os campos `reasoning` (string) e `searches` (array de termos e instruções de busca).
- **Autenticação**: Gerida pelo middleware `PasswordAuthMiddleware` ([api/auth.py](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/api/auth.py#L12)) que verifica cabeçalhos `Authorization` em formato `Bearer {password}` baseados na variável `OPEN_NOTEBOOK_PASSWORD`.

## Pipeline multiagente
A busca por estruturas de pipeline multiagente com contratos de dados específicos resultou nos seguintes status:
- `⚠️ Verificar: ExtractedData não encontrado no repositório.`
- `⚠️ Verificar: AnalysisData não encontrado no repositório.`
- `⚠️ Verificar: TutorialData não encontrado no repositório.`
- `⚠️ Verificar: WorkspaceData não encontrado no repositório.`

## Regras de correção
1. **Investigar antes de editar**: Sempre verifique e execute a suíte de testes e o typecheck para confirmar a estabilidade antes de propor alterações.
2. **Menor diff funcional**: Evite refatorar amplamente. Faça correções focadas para sanar problemas específicos.
3. **Preservar contratos**: Não mude nomes de propriedades, enums ou DTOs sem atualizar simultaneamente o backend e o frontend.
4. **Validar tipos**: Não insira `any` desnecessário, casts inseguros ou tags de supressão como `// @ts-ignore`.
5. **Não mascarar erros**: Trate exceções e propague erros reais para o usuário de forma compreensível em vez de retornar fallbacks silenciosos que escondem bugs.
6. **Não remover segurança**: Mantenha as proteções de autenticação, CORS e as rotinas de criptografia de credenciais via Fernet intactas.

## Validação
Use apenas comandos reais suportados pelo repositório:
- **Typecheck do Frontend**: `cd frontend && npx tsc --noEmit`
- **Linter do Frontend**: `cd frontend && npm run lint`
- **Testes Unitários do Frontend**: `cd frontend && npm run test`
- **Build do Frontend**: `cd frontend && npm run build`
- **Testes do Backend (Python)**: `.venv/bin/pytest`
