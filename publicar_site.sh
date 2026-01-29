#!/bin/bash
cd "/home/sergio/Área de trabalho/hexo"

# Carregar Token Seguro
if [ -f .secret_token ]; then
    TOKEN=$(cat .secret_token)
else
    echo "ERRO: Arquivo .secret_token não encontrado!"
    echo "Crie o arquivo com seu GitHub Personal Access Token."
    exit 1
fi

echo "=== Publicando Blog ==="

# 1. Configurar para Produção (GitHub Pages)
echo "Configurando para GitHub Pages..."
sed -i 's|url: http://localhost:4000/literablog|url: https://zonaeducacional.github.io/literablog|' _config.yml
sed -i 's|root: /|root: /literablog/|' _config.yml

# 2. Gerar Site
echo "Gerando arquivos..."
npx hexo clean
npx hexo generate

# 3. Adiciona token temporariamente para deploy
echo "Preparando deploy..."
sed -i "s|repo: https://github.com/zonaeducacional/literablog.git|repo: https://${TOKEN}@github.com/zonaeducacional/literablog.git|" _config.yml

# 4. Enviar para GitHub Pages
echo "Enviando para a internet..."
npx hexo deploy

# 5. Remover token (Segurança)
sed -i "s|repo: https://${TOKEN}@github.com/zonaeducacional/literablog.git|repo: https://github.com/zonaeducacional/literablog.git|" _config.yml

# 6. Atualizar código fonte no GitHub
echo "Salvando backup do código..."
git add .
git commit -m "Update via Script Automatico"
git push origin main

# 7. Voltar configuração para Local (para você poder editar depois)
echo "Restaurando configuração local..."
sed -i 's|url: https://zonaeducacional.github.io/literablog|url: http://localhost:4000/literablog|' _config.yml
sed -i 's|root: /literablog/|root: /|' _config.yml

echo " "
echo "=========================================="
echo "   SUCESSO! SEU SITE FOI ATUALIZADO."
echo "   Acesse: https://zonaeducacional.github.io/literablog"
echo "=========================================="
