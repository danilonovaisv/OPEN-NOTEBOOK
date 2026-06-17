---
name: surrealdb-migrations
description: Diretrizes para interagir com o banco SurrealDB no ambiente local.
---

# SurrealDB Migrations e Queries

O "Open Notebook" utiliza SurrealDB como sua fundação de dados, operando na porta 8000 por padrão.

## Conexão e Namespaces
- **Namespace:** `open_notebook`
- **Database:** `open_notebook`
- **Usuário/Senha padrão dev:** `root` / `root`
- O volume local monta em `./surreal_data`. NUNCA exclua esta pasta!

## Executando Queries via API
Se o SurrealDB estiver ativo, você pode inspecioná-lo através da API REST:
```bash
curl -X POST -u "root:root" -H "NS: open_notebook" -H "DB: open_notebook" -H "Accept: application/json" -d "INFO FOR DB;" http://localhost:8000/sql
```

## Diretrizes de Migração
- Sempre versione alterações de schema em `.surql`.
- Evite destruir tabelas em ambiente que não seja estritamente de testes.
- Utilize as features de *Graph Database* para relacionar notas (`RELATE note:a->links->note:b`).
