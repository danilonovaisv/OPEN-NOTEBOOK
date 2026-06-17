# Project Brief — OPEN-NOTEBOOK

## Repositório

https://github.com/lfnovo/open-notebook.git

## Objetivo operacional

Executar o Open Notebook localmente em um MacBook usando Docker Compose, configurar uso com OpenAI/ChatGPT e outros provedores de IA, e preparar análise segura para deploy remoto com banco e storage persistente.

## Tipo de projeto

Aplicação de IA e automação para pesquisa assistida, notebooks, fontes, notas, chat contextual, busca, transformações e geração de podcasts.

## Stack confirmada pelo README

- Python
- FastAPI
- Next.js
- React
- SurrealDB
- LangChain
- Docker Compose
- REST API
- Provedores de IA múltiplos

## Portas confirmadas

- `8502`: Web UI
- `5055`: API
- `8000`: SurrealDB
- `11434`: Ollama, quando usado no setup local com Ollama

## Provedores de IA citados

- OpenAI
- Anthropic
- Google
- Groq
- Ollama
- LM Studio
- Azure OpenAI
- Mistral
- DeepSeek
- xAI
- OpenRouter
- Outros provedores OpenAI-compatible

## Premissas

- Para uso comum, priorizar Docker Compose.
- Para desenvolvimento a partir do código-fonte, verificar requisitos antes de instalar dependências.
- Para deploy remoto, exigir volume persistente, secrets manager, TLS, autenticação e backup.
