# Como criar e publicar posts no seu Blog Hexo

Este é um guia rápido para você lembrar como adicionar conteúdo ao seu blog `literablog`.

## 1. Criar um Novo Post
Abra o terminal na pasta do projeto (`/home/sergio/Área de trabalho/hexo`) e digite:

```bash
npx hexo new "O Título do Seu Post"
```

Isso vai criar um arquivo Markdown (`.md`) na pasta `source/_posts/`.
Exemplo: `source/_posts/o-titulo-do-seu-post.md`

## 2. Escrever o Conteúdo
Abra o arquivo criado no seu editor de texto.
Você verá algo assim no topo (isso se chama *Front-matter*):

```yaml
---
title: O Título do Seu Post
date: 2026-01-28 22:00:00
tags:
---
```

Escreva seu texto abaixo desses traços. Você pode usar formatação Markdown:
- **Negrito**: `**texto**`
- *Itálico*: `*texto*`
- Links: `[Google](https://google.com)`
- Títulos: `## Subtítulo`

### Adicionando Tags e Categorias
Para organizar, edite o topo assim:

```yaml
---
title: Minha Aula de História
date: 2026-01-28 22:00:00
tags:
  - História
  - Educação
categories:
  - Aulas
---
```

## 3. Testar Localmente (Opcional mas recomendado)
Antes de colocar no ar, veja como ficou:

```bash
npx hexo server
```
Acesse `http://localhost:4000` no navegador.
Para parar o servidor, aperte `Ctrl + C` no terminal.

## 4. Publicar (Deploy)
Quando estiver pronto para o mundo ver:

```bash
npx hexo clean && npx hexo generate && npx hexo deploy
```

> **Nota:** Como não salvamos sua senha no arquivo por segurança, o terminal pode pedir seu usuário (`zonaeducacional`) e senha (o token `ghp_...`) durante o deploy.

## 5. Salvar o Código Fonte (Backup)
É importante também salvar o arquivo do post no seu repositório de código (não só o site publicado):

```bash
git add .
git commit -m "Adicionando post sobre História"
git push origin main
```
