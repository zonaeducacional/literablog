# Protocolo de Criação de Posts com IA (Antigravity)

Este documento define o fluxo de trabalho para quando o usuário Sérgio solicitar a criação de um novo artigo para o blog Hexo usando IA.

## 1. O Gatilho
O usuário dirá algo como:
- "Crie um post sobre [TEMA]"
- "Escreva um artigo sobre [ASSUNTO]"
- "Novo post IA"

## 2. O Processo (Executar diretamente)

Ao receber o comando, o Agente Antigravity deve:

### Passo 1: Gerar o Conteúdo
Gerar internamente (sem chamar scripts externos) um arquivo Markdown completo com a seguinte estrutura:

```markdown
---
title: "Título Criativo e Otimizado para SEO"
date: YYYY-MM-DD HH:MM:SS
tags: [Tags, Relevantes, Aqui]
categories: [Categoria Principal]
thumbnail: "URL_da_imagem_se_houver_ou_deixar_comentario"
---

Introdução engajadora (tl;dr) que prende o leitor.

<!-- more -->

## Tópico 1
Conteúdo detalhado...

## Tópico 2
Conteúdo detalhado...

> Citação ou destaque importante (Blockquote).

## Conclusão
Fechamento do artigo.
```

### Passo 2: Salvar o Arquivo
Salvar o conteúdo gerado em:
`/home/sergio/Área de trabalho/hexo/source/_posts/nome-do-post-slug.md`

### Passo 3: Deploy (Opcional / Perguntar)
Oferecer para rodar o script de deploy ou rodar automaticamente se o usuário tiver dado permissão prévia ("Pode publicar").

Comando para deploy: `/home/sergio/Área de trabalho/hexo/publicar_site.sh`

## Notas
- **Tom de Voz**: Profissional, educador, filósofo e tecnológico (Vibe Coder).
- **Idioma**: Português do Brasil (PT-BR).
