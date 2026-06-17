---
name: nextjs-tailwind-ui
description: Melhores práticas para desenvolvimento da UI do Open Notebook com Next.js 16 e Tailwind CSS v4.
---

# Next.js e Tailwind UI

Este projeto foca em uma interface de alto padrão estético ("Ghost Era").

## Tailwind CSS v4
- Use as variáveis CSS definidas no index para cores.
- `bg-background`, `text-foreground`, `bg-primary`, etc.
- Evite adicionar estilos inline.
- Utilize classes semânticas.

## Server vs Client Components
- Next.js 16 usa Server Components por padrão.
- Adicione `"use client"` no topo do arquivo apenas se o componente usar hooks (useState, useEffect, Zustand) ou manipulação de DOM/eventos.
- Isole componentes cliente nas folhas da árvore (Client leaves).

## Acessibilidade e Radix UI
- Utilize a biblioteca `lucide-react` para os ícones.
- Não crie modais do zero; utilize os componentes Radix já incluídos no pacote (ex: `Dialog`, `Popover`, `Tooltip`).
- Sempre assegure contraste suficiente (texto e fundos) de acordo com o design system do repositório.
