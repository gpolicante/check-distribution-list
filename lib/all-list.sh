#!/bin/bash

# este script ira criar um relatorio com todas as caixas postais com as seguintes informações 
# lista de distribuicao, caixa postal 

CONSULTARQ=$(ls  | grep *.csv)

if [ -z $CONSULTARQ ]; then 

echo "gerando relatorio, aguarde..."

for i in $(/opt/zimbra/bin/zmprov gadl) ; do 


echo  $i $(/opt/zimbra/bin/zmprov gdlm $i | egrep -v "distribution|member" )  >> listas.csv

 echo "relatorio da lista $i  aguarde..."

done 

sed -i 's/ /;/g' listas.csv 

bash lib/list.sh

bash  lib/user.sh

else 

rm *.csv 

CONSULTADIR=$(ls  | grep -x listas)
	if [ ! -z $CONSULTADIR ]; then 
	rm -rf listas
	fi

bash all-list.sh 
 
fi
clear 
echo
echo

tar -cf relatorio_$(date +%d-%m-%y).tar listas *.csv  
 rm -rf *.csv 
 rm -rf listas

echo "###### relatorios gerados com sucesso, consulte o arquivo relatorio_x-x-x.tar############# " 

