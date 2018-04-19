# check-distribution-list
Este script irá criar um relatorio de quais listas de distribuicao voce possui em seu zimbra. 

Para executar, basta dar permissao de execucao no script relatorio.sh e executar com bash relatorio.sh ou ./relatorio.sh 

O script podera demorar dependendendo da sua base de dados pois ele irá verificar lista por lista e conta por conta, esta execucao utiliza bastante processamento da maquina devido aos comandos do zimbra consumirem bastante processamento. 

Os seguintes relatorios serao gerados : 

- Diretorio listas
- listas.csv 
- nenhuma_lista.csv
- replicas.csv
- usuarios.csv

Diretorio listas: 

Este diretorio ira conter um arquivo para cada lista de distribuicao e dentro de cada arquivo, uma lista com todos os usuarios daquela lista

listas.csv:

Este arquivo ira criar um relatorio com todas as listas de distribuicoes e os seus usuarios, porem tudo dentro de um unico arquivo separado por ";"

nenhuma_lista.csv:

Este arquivo ira mostrar todas as contas e caixas postais que nao estao em nenhuma lista de distribuicao

replicas.csv:

Este arquivo ira mostrar por usuario, quantas listas de distribuicao cada usuario esta fazendo parte, este arquivo tambem esta separado por ";"

usuarios.csv:

Este arquivo ira mostrar por usuario, quais as listas de distribuicao aquele usuario faz parte, tambem separado por ";"
