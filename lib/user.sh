#!/bin/bash


CONSULTADIRLIST=$(ls  | grep -x listas )

if [ -z $CONSULTADIRLIST ]; then 

echo "ocorreu um erro, verifique se o diretorio listas existe ou a sua permissao " 

else 

for i in $(/opt/zimbra/bin/zmprov -l gaa) ; do 

CONSULTA=$(grep -x $i listas/* | head -n1)

	if [ -z $CONSULTA  ]; then
	> nenhuma_lista.csv
	echo $i >> nenhuma_lista.csv  

	else 

	echo " gerando relatorio de usuarios replicados e lista de grupos por usuarios, aguarde... "
	echo $i $(grep -x $i listas/* | awk -F":" '{print $1}'  | awk -F"/" '{print $2}') >> usuarios.csv
	echo $i $(cat listas/* | grep -x $i | wc  | awk '{print $1}') >>  replicas.csv

	fi


done 

sed -i 's/ /;/g' usuarios.csv
sed -i 's/ /;/g' replicas.csv

fi
