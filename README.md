# Litera Blog (Hexo)

Este é o código fonte do blog **Litera**, desenvolvido utilizando **Hexo**.
O blog é publicado automaticamente no GitHub Pages.

## 🚀 Como Publicar

Para facilitar a publicação e atualização do blog, utilize o script automatizado:

```bash
./publicar_site.sh
```

Este script realiza as seguintes ações:
1. Configura o `_config.yml` para produção.
2. Gera os arquivos estáticos (`hexo generate`).
3. Realiza o deploy (`hexo deploy`).
4. Faz o commit e push das alterações (novos posts) para o repositório `main` no GitHub.
5. Restaura as configurações locais.

## 🔑 Configuração de Segurança

O deploy utiliza um **Token de Acesso Pessoal (PAT)** do GitHub para autenticação segura.
O token **NÃO** deve ser salvo no código fonte. 

Armazene o token no arquivo `.secret_token` na raiz do projeto:

```bash
echo "SEU_TOKEN_AQUI" > .secret_token
```

> **Nota:** O arquivo `.secret_token` é ignorado pelo Git (`.gitignore`) para proteção.

## 🛠️ Comandos Hexo Úteis

- `npx hexo new "Titulo do Post"`: Criar novo post.
- `npx hexo server`: Rodar servidor local (http://localhost:4000).
- `npx hexo clean`: Limpar cache.

## 📂 Estrutura

- `source/_posts`: Arquivos Markdown dos posts.
- `themes/`: Tema do blog (Cactus).
- `publicar_site.sh`: Script de automação.

## 📝 Histórico

- **Automação de Deploy**: Implementado script `publicar_site.sh` para deploy seguro e sync com GitHub.
- **Segurança**: Removido token hardcoded, implementado leitura via `.secret_token`.
