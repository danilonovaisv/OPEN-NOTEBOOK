# Guia de deploy em VPS com Docker Compose

## Objetivo

Rodar Open Notebook em servidor remoto preservando banco e arquivos.

## Requisitos

- VPS com Docker
- Docker Compose
- Domínio opcional
- TLS/reverse proxy recomendado
- Backup configurado

## Passos gerais

1. Criar VPS.
2. Instalar Docker.
3. Clonar repositório.
4. Configurar `docker-compose.yml`.
5. Definir secrets fora do Git.
6. Subir containers.
7. Configurar reverse proxy.
8. Ativar HTTPS.
9. Validar persistência.
10. Configurar backup.

## Atenção

Não exponha SurrealDB publicamente.
Não exponha API sem avaliar autenticação.
Não use chave de exemplo em produção.
