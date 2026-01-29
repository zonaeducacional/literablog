# Como Mudar o Tema do Seu Blog

Mudar o visual do blog é fácil. O Hexo tem centenas de temas gratuitos.

## 1. Escolher o Tema
Acesse a galeria oficial: [https://hexo.io/themes/](https://hexo.io/themes/)
Encontre um que você goste e copie o link do repositório **GitHub** dele.

## 2. Instalar o Tema
Vamos supor que você gostou do tema "NexT".
Abra o terminal na pasta `hexo` e digite:

```bash
git clone https://github.com/theme-next/hexo-theme-next themes/next
```
*(Troque o link e o nome "next" pelo tema que você escolheu)*

## 3. Ativar o Tema
Abra o arquivo `_config.yml`.
Procure a linha:
```yaml
theme: cactus
```
E mude para o nome da pasta que você criou (ex: `next`):
```yaml
theme: next
```

## 4. Testar
Use seu atalho **Escrever Blog** para ver como ficou.

> **Dica:** Cada tema tem suas próprias configurações. Geralmente eles vêm com um arquivo `_config.yml` dentro da pasta do tema (`themes/nome-do-tema/_config.yml`) que você pode copiar para a pasta raiz como `_config.nome-do-tema.yml` para personalizar.
