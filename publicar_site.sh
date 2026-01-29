#!/bin/bash
cd "/home/sergio/Área de trabalho/hexo"
echo "Gerando site..."
npx hexo clean
npx hexo generate
echo "Enviando para o Vercel/GitHub..."
npx hexo deploy
echo "Salvando código no GitHub..."
git add .
git commit -m "Update via Script Automatico"
git push origin main
echo "Pronto! Pode fechar esta janela."
read -p "Pressione ENTER para sair..."
