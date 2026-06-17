# Setup Notes — OPEN-NOTEBOOK

## Execução local recomendada

Usar Docker Desktop + Docker Compose.

## Fluxo local seguro

1. Instalar Docker Desktop.
2. Clonar o repositório.
3. Confirmar `docker-compose.yml`.
4. Alterar `OPEN_NOTEBOOK_ENCRYPTION_KEY`.
5. Validar compose.
6. Subir serviços.
7. Abrir Web UI.
8. Configurar provider de IA pela interface.
9. Criar notebook.
10. Adicionar fonte.
11. Validar chat.

## Variáveis confirmadas

```env
OPEN_NOTEBOOK_ENCRYPTION_KEY=change-me-to-a-long-random-secret-string
SURREAL_URL=ws://surrealdb:8000/rpc
SURREAL_USER=root
SURREAL_PASSWORD=password
SURREAL_NAMESPACE=open_notebook
SURREAL_DATABASE=open_notebook
OLLAMA_BASE_URL=http://ollama:11434
```

`OLLAMA_BASE_URL` deve ser usada apenas quando Ollama estiver no Docker Compose.

## Dados persistentes

Diretórios que podem conter dados locais:

```text
notebook_data/
surreal_data/
ollama_models/
```

Não versionar esses diretórios.

## Validação local

```zsh
docker compose config
docker compose ps
docker compose logs --tail=120
curl -I http://localhost:8502
curl -I http://localhost:5055/docs
```
