# Security Notes — OPEN-NOTEBOOK

## Segredos

Nunca salvar em Git:

- OpenAI API key
- Anthropic API key
- Google API key
- Groq API key
- OpenRouter API key
- Mistral API key
- DeepSeek API key
- xAI API key
- Azure OpenAI credentials
- Senhas reais
- Tokens
- Connection strings privadas

## Arquivos sensíveis

Não versionar:

```text
.env
.env.local
notebook_data/
surreal_data/
ollama_models/
*.db
*.sqlite
*.sqlite3
```

## Produção

Antes de expor publicamente:

1. Ativar autenticação.
2. Usar HTTPS.
3. Restringir portas internas.
4. Proteger SurrealDB.
5. Configurar backup.
6. Validar restore.
7. Definir limite de custos nos provedores de IA.
