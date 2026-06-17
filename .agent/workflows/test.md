---
command: /test
description: Executa a bateria de testes automatizados locais.
---

# Fluxo de Testes

Ao invocar este workflow, execute os passos sequenciais:

1. **Frontend**: Navegue até `/frontend`.
2. Rode `npm run test` para disparar os testes unitários via Vitest.
3. **Backend**: Na raiz (ou `/tests` se ativado), utilize seu ambiente virtual Python (`.venv/bin/activate`).
4. Rode `pytest tests/` ou `pytest -v` (se a pasta tests existir) ou `uv run pytest`.
5. Apresente um resumo claro de aprovados/reprovados. Pare o fluxo se ocorrerem erros críticos, ou ofereça uma correção imediata sugerindo o patch.
