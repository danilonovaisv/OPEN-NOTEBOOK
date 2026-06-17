# Checklist de execução local

## Pré-requisitos

- [ ] Docker Desktop instalado
- [ ] Docker Desktop aberto
- [ ] Git disponível no terminal
- [ ] Repositório clonado
- [ ] `docker-compose.yml` presente
- [ ] `OPEN_NOTEBOOK_ENCRYPTION_KEY` alterada
- [ ] Nenhum segredo salvo em Git

## Validação

```zsh
docker --version
docker compose version
docker compose config
```

## Execução

```zsh
docker compose up -d
docker compose ps
docker compose logs --tail=120
```

## Acesso

- [ ] Web UI: http://localhost:8502
- [ ] API docs: http://localhost:5055/docs

## Configuração de IA

- [ ] Abrir Settings/API Keys
- [ ] Adicionar provider
- [ ] Testar conexão
- [ ] Descobrir modelos
- [ ] Registrar modelos
- [ ] Definir modelo padrão

## Teste funcional

- [ ] Criar notebook
- [ ] Adicionar fonte
- [ ] Fazer pergunta no chat
- [ ] Confirmar resposta contextual
