#!/bin/bash 

echo -e "
\t\t +-----------------------------+
\t\t |                             |
\t\t |                             |
\t\t |    1) relatorio geral       |
\t\t |    2) relatorio por lista   |
\t\t |    3) read-me               |
\t\t |                             |
\t\t |                             |
\t\t |                             |
\t\t +-----------------------------+
"

read -p "Escolha uma opção válida " opt
case $opt in 
1) source lib/all-list.sh ;;
2) source lib/list.sh ;;
3) cat read-me  ;;
esac
