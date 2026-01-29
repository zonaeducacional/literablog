#!/bin/bash
cd "/home/sergio/Área de trabalho/hexo"

echo "=== INICIANDO O COMPOSITOR ==="

# 0. Garante configuração LOCAL (para o Admin funcionar)
echo "Configurando para modo Local..."
sed -i 's|root: /literablog/|root: /|' _config.yml
sed -i 's|url: https://zonaeducacional.github.io/literablog|url: http://localhost:4000/literablog|' _config.yml

# 1. Limpeza PRO: Mata qualquer coisa usando a porta 4000
echo "Liberando a porta 4000..."
fuser -k 4000/tcp >/dev/null 2>&1
sleep 2

# 2. Inicia o servidor e salva o log
echo "Iniciando servidor (aguarde)..."
npx hexo server > server.log 2>&1 &
SERVER_PID=$!

# 3. Aguarda o servidor estar pronto (procura por 'Hexo is running' no log)
echo "Aguardando o servidor ficar pronto..."
count=0
while ! grep -q "Hexo is running" server.log; do
  sleep 1
  ((count++))
  
  if grep -q "FATAL" server.log; then
      echo "ERRO DETECTADO:"
      cat server.log
      read -p "Enter para sair..."
      exit 1
  fi

  if [ $count -gt 30 ]; then
    echo "Demorou demais."
    tail -n 10 server.log
    read -p "Enter para sair..."
    exit 1
  fi
done

echo "Servidor ONLINE!"

# 4. Abre o navegador
echo "Abrindo o navegador..."
xdg-open "http://localhost:4000/admin/"

# 5. Mantém a janela aberta
echo ""
echo "================================================="
echo "  EDITOR ABERTO NO SEU NAVEGADOR"
echo "  Quando terminar, pressione ENTER aqui."
echo "================================================="
read

# 6. Encerra
echo "Desligando..."
kill $SERVER_PID
fuser -k 4000/tcp >/dev/null 2>&1
