# Prompt para revisão de deploy remoto

Analise o repositório OPEN-NOTEBOOK para planejar deploy remoto seguro.

Leia primeiro:
- README.md
- docker-compose.yml
- AGENTS.md
- .context/deploy-plan.md
- .context/security-notes.md
- ops/deploy/provider-comparison.md
- ops/checklists/deploy-checklist.md

Objetivo:
Comparar VPS com Docker Compose, Railway, Render, Fly.io e DigitalOcean para executar Open Notebook remotamente com persistência de dados.

Regras:
- Não execute deploy.
- Não crie recursos cloud.
- Não configure domínio.
- Não altere arquivos sem aprovação.
- Não use segredos reais.
- Não exponha SurrealDB publicamente.
- Não recomende plataforma sem volume persistente sem alertar risco.

Entregue:
1. Requisitos do app.
2. Matriz de decisão.
3. Melhor opção para produção inicial.
4. Riscos de storage.
5. Riscos de banco.
6. Riscos de autenticação.
7. Plano de backup.
8. Plano de rollback.
9. Checklist pré-deploy.
10. Checklist pós-deploy.
