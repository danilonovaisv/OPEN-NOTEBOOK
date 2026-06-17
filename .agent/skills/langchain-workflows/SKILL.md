---
name: langchain-workflows
description: Instruções para gerir fluxos de agentes de IA usando LangChain e LangGraph no backend.
---

# LangChain e LangGraph

A orquestração do pensamento ("Agentic Loop") no Open Notebook é regida pelo LangGraph.

## Regras de Implementação
1. **Ferramentas (`@tool`)**: Documente exaustivamente as docstrings de qualquer função exposta ao LLM. Modelos genéricos leem a docstring para decidir quando chamar a tool.
2. **Streaming**: O backend FastAPI utiliza rotas de Event Source para fazer streaming em tempo real das mensagens e do estado do grafo. Respeite essa implementação.
3. **Estado**: Certifique-se de que o Pydantic State do grafo cubra todas as mutações necessárias ao longo da cadeia.
4. **Resiliência**: Adicione tratamento de erros robusto em nós de chamada LLM para *fallback* (ex: se OpenAI falhar, tentar Anthropic).
5. **Checkpoints**: O estado conversacional utiliza SQLite (`langgraph-checkpoint-sqlite`). Cuidado ao deletar bancos locais ou interferir nas thread IDs ativas.
