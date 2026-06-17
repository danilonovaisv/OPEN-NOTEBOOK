# Deploy Plan — OPEN-NOTEBOOK

## Objetivo

Permitir uso remoto do Open Notebook sem depender do MacBook local.

## Requisitos mínimos para deploy

- Docker ou runtime compatível com containers
- Persistência para SurrealDB
- Persistência para dados do notebook
- Variáveis secretas fora do Git
- TLS/HTTPS
- Autenticação antes de exposição pública
- Backup periódico
- Logs acessíveis
- Estratégia de atualização e rollback

## Opção recomendada

### VPS com Docker Compose

Mais compatível com o README porque mantém a topologia do projeto:

- `surrealdb`
- `open_notebook`
- volumes locais
- portas controladas
- reverse proxy opcional
- backups por filesystem/snapshot

## Opções alternativas

### Railway

Boa opção gerenciada, mas exige validar:

- volumes persistentes
- custos
- rede interna entre serviços
- exposição apenas da Web UI/API
- estratégia de backup

### Render

Validar:

- persistent disks
- suporte ao compose ou necessidade de separar serviços
- custo dos discos
- comportamento em restart/deploy

### Fly.io

Validar:

- volumes por Machine
- adaptação de Docker Compose para configuração Fly
- backup
- região
- custo

### DigitalOcean

Preferir:

- Droplet com Docker Compose

Evitar como primeira opção:

- App Platform simples sem storage persistente local

## Checklist antes de publicar

- [ ] Senha/autenticação ativa
- [ ] HTTPS ativo
- [ ] Banco não exposto publicamente
- [ ] API protegida conforme necessidade
- [ ] Secrets fora do Git
- [ ] Backup testado
- [ ] Restore testado
- [ ] Logs monitorados
