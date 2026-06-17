# Guia passo a passo — OPEN-NOTEBOOK

## 1. Onde colocar estes arquivos

1. Baixe e extraia este pacote.
2. Clone o repositório oficial:

```zsh
mkdir -p "$HOME/Projects"
cd "$HOME/Projects"
git clone https://github.com/lfnovo/open-notebook.git
cd open-notebook
```

3. Copie todos os arquivos extraídos para dentro da pasta `open-notebook`.

Estrutura esperada:

```text
open-notebook/
├── AGENTS.md
├── .context/
├── ops/
├── scripts/
├── .env.example
└── .gitignore.open-notebook-local.example
```

## 2. Validar Docker

```zsh
docker --version
docker compose version
```

## 3. Confirmar docker-compose.yml

```zsh
ls -la docker-compose.yml
```

Se não existir:

```zsh
curl -o docker-compose.yml https://raw.githubusercontent.com/lfnovo/open-notebook/main/docker-compose.yml
```

## 4. Alterar chave de criptografia

Abra:

```zsh
open -a TextEdit docker-compose.yml
```

Troque:

```text
OPEN_NOTEBOOK_ENCRYPTION_KEY=change-me-to-a-secret-string
```

por uma string longa e privada.

## 5. Validar compose

```zsh
docker compose config
```

## 6. Subir serviços

```zsh
chmod +x scripts/*.sh
./scripts/start-open-notebook.sh
```

Quando pedir confirmação, digite:

```text
START
```

## 7. Acessar

```zsh
open http://localhost:8502
open http://localhost:5055/docs
```

## 8. Configurar OpenAI/ChatGPT

Na Web UI:

1. Settings/API Keys
2. Add Credential
3. Provider: OpenAI
4. Cole a API key somente na UI
5. Save
6. Test Connection
7. Discover Models
8. Register Models
9. Definir modelo padrão

## 9. Usar prompts para agents

Prompts disponíveis:

```text
ops/prompts/google-antigravity.md
ops/prompts/agent-review.md
ops/prompts/error-debug.md
ops/prompts/deploy-review.md
```

## 10. Validar funcionamento

```zsh
./scripts/validate-open-notebook.sh
```

## 11. Checklist final

- [ ] Docker ativo
- [ ] Compose válido
- [ ] Serviços ativos
- [ ] UI abre em http://localhost:8502
- [ ] API abre em http://localhost:5055/docs
- [ ] Provider configurado
- [ ] Notebook criado
- [ ] Fonte adicionada
- [ ] Chat funcionando
