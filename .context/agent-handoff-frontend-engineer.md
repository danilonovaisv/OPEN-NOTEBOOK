# Handoff — Frontend Engineer

## Objetivo
Fornecer instruções operacionais para que um Frontend Engineer (ou agents que atuem nesta role) possa auditar, manter e corrigir fluxos de interface, gerenciamento de estado local, validação de tipos TypeScript e integração de APIs de IA.

## Responsabilidades do Frontend Engineer
- **Componentes e UI**: Criação, estilização (usando Tailwind CSS v4) e refinamento de componentes em [frontend/src/components/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/components/).
- **Roteamento**: Manutenção das rotas da aplicação Next.js localizadas sob [frontend/src/app/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/app/).
- **Gerenciamento de Estado**: Controle e fluxo de estado da aplicação utilizando a biblioteca Zustand.
- **Acessibilidade e Responsividade**: Assegurar suporte de acessibilidade (a11y) e layouts fluidos usando Tailwind.
- **Mensagens e Localização**: Suporte de multi-idioma (i18next) sob a pasta [frontend/src/lib/locales/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/lib/locales/).
- **Loading, Empty e Error States**: Garantir feedback visual apropriado para estados de carregamento, listas vazias e mensagens de erro do backend.
- **Consumo de API**: Realizar chamadas HTTP tipadas por meio do cliente Axios configurado em [frontend/src/lib/api/](file:///Users/PROJETOS-DEV/OPEN-NOTEBOOK/frontend/src/lib/api/).

## Não responsabilidades
- **Alterações de Backend**: Não modificar endpoints ou lógica do FastAPI em `api/` sem alinhamento prévio ou escopo explícito.
- **Alterações de Banco de Dados**: Não criar ou modificar tabelas, índices ou queries no SurrealDB diretamente.
- **Autenticação**: Não alterar as rotinas de verificação do token bearer ou mecanismos de validação de senha do backend.
- **Variáveis de Ambiente**: Não expor credenciais reais, chaves privadas ou tokens em repositórios públicos.
- **Deploy**: Não modificar configurações de infraestrutura (como `Dockerfile` ou `docker-compose.yml`) a menos que explicitamente solicitado.

## Checklist antes de alterar UI
- [ ] **Localizar componente**: Identificar a localização exata do componente visual e seus arquivos filhos no diretório `src/components/` ou `src/app/`.
- [ ] **Mapear tipo associado**: Achar a definição do tipo TypeScript correspondente na pasta `src/lib/types/` ou `src/lib/api/`.
- [ ] **Validar contrato de API**: Verificar a rota associada no backend FastAPI e a estrutura do payload de requisição e resposta.
- [ ] **Implementar estados de UI**: Garantir a existência de `skeleton load` (ou spinner), tela de erro amigável (`error state`) e estado vazio (`empty state`).
- [ ] **Estratégia de rollback visual**: Assegurar que falhas de carregamento em renderizações assíncronas de IA não travem a tela e ofereçam opção de reenvio.

## Comandos de validação
Utilize sempre os comandos reais listados abaixo para validar as alterações:
```bash
# Navegar até a pasta do frontend
cd frontend

# Executar verificação estática de tipos TypeScript
npx tsc --noEmit

# Rodar verificação de lint (ESLint)
npm run lint

# Rodar testes unitários (Vitest)
npm run test

# Validar o empacotamento completo do Next.js
npm run build
```
