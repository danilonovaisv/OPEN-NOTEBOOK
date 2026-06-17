# Web App Validation Checklist

## Antes da alteração
- [ ] **Contexto lido**: Ler `AGENTS.md` e `.context/*` para entender regras de conformidade e segurança.
- [ ] **Arquivos impactados localizados**: Confirmar os caminhos físicos dos arquivos no repositório antes de propor modificações.
- [ ] **Tipos localizados**: Identificar as interfaces TypeScript correspondentes no frontend.
- [ ] **Schemas localizados**: Identificar as classes Pydantic ou JSON schemas no backend que servem de entrada/saída estruturada para IAs.
- [ ] **Consumidores localizados**: Mapear quais funções ou componentes consomem a estrutura de dados a ser alterada.
- [ ] **Risco de payload avaliado**: Verificar se a modificação expande o tamanho de objetos trafegados por HTTP ou WebSocket, evitando estouro de buffer ou Payload Too Large.

## Durante a alteração
- [ ] **Menor diff**: Realizar modificações precisas e localizadas, evitando alterar estilos, formatações ou arquitetura alheia.
- [ ] **Preservação de contrato**: Não renomear atributos de payload que quebrem a comunicação entre frontend e backend.
- [ ] **Sem any desnecessário**: Escrever código tipado de forma estrita sem usar supressões (`@ts-ignore`) ou casts inseguros.
- [ ] **Sem supressão de erro**: Garantir tratamentos try-catch apropriados sem silenciar erros críticos.
- [ ] **Sem remoção de validação**: Preservar sanitizações de inputs e checagens de integridade existentes.
- [ ] **Sem segredo em logs**: Certificar que chaves de API, senhas ou dados sigilosos não sejam impressos no console ou armazenados em logs do sistema.

## Depois da alteração
- [ ] **Typecheck**: Executar `cd frontend && npx tsc --noEmit` para garantir compilação sem erros.
- [ ] **Lint**: Executar `cd frontend && npm run lint` e checar novas advertências.
- [ ] **Testes de Frontend**: Executar `cd frontend && npm run test` e verificar se a suíte de testes do vitest passa.
- [ ] **Testes de Backend**: Executar `.venv/bin/pytest` a partir da raiz do repositório para validar o backend Python.
- [ ] **Build**: Executar `cd frontend && npm run build` para garantir que o Next.js compile a versão de produção.
- [ ] **Teste manual de fluxo**: Simular a execução do fluxo afetado localmente para validar a responsividade e o feedback do usuário.
- [ ] **Documentação atualizada**: Atualizar `AGENTS.md` ou arquivos `.context/` correspondentes se novos fluxos ou contratos de dados forem criados.

## Sinais de sucesso
- [ ] O comando de build do Next.js termina com código `0` sem erros de compilação.
- [ ] A suíte de testes vitest e pytest reportam sucesso em 100% dos testes executados.
- [ ] O backend e o frontend se comunicam sem disparar exceções CORS (`Access-Control-Allow-Origin` refletindo adequadamente).
- [ ] Chamadas com structured output retornam exatamente o formato JSON esperado pelo consumidor TypeScript.

## Sinais de falha
- [ ] O typecheck falha com erros de propriedade ausente ou tipo incompatível.
- [ ] Exceções do tipo `413 Payload Too Large` ou `502 Bad Gateway` são lançadas nas integrações de arquivos ou chamadas de IA.
- [ ] Erros de descriptografia (`Decryption failed: key is incorrect`) surgem ao interagir com configurações de credenciais.
- [ ] O linter do frontend reporta novos erros fatais que impedem o build de produção.
