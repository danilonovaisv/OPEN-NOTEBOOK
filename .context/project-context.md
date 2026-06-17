# Open Notebook - Contexto do Projeto

## Visão Geral
Open Notebook é um sistema auto-hospedado de gestão de conhecimento impulsionado por IA, que ajuda a organizar, analisar e obter insights de informações.

## Arquitetura
- **Frontend**: Next.js 16 (App Router), React 19, Tailwind CSS v4, Zustand. Fornece uma interface de usuário interativa e rica (UX Ghost Era).
- **Backend**: API REST baseada em Python (>=3.11) com FastAPI.
- **Cognitivo**: LangChain / LangGraph, orquestrando fluxos de pensamento com múltiplos provedores de LLM (OpenAI, Anthropic, Ollama, Google GenAI).
- **Banco de Dados**: SurrealDB, oferecendo capacidades relacionais e de grafos para relacionar fragmentos de conhecimento.

## Deploy
- O ambiente é conteinerizado e gerenciado pelo Docker Compose.
- Serviços principais: `surrealdb` e `open_notebook`.
