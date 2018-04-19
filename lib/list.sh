#!/bin/bash


CONSULTA=$(ls  | grep -x listas)

if [ ! -z $CONSULTA ]; then   

for i in $(/opt/zimbra/bin/zmprov gadl) ; do 



/opt/zimbra/bin/zmprov gdlm $i | egrep -v "distribution|member" > listas/$(echo $i | awk -F"@" '{print $1}')

echo " gerando relatorio da lista separada por arquivos $i, aguarde ... "


done 

else 

mkdir listas 

bash lib/list.sh 

fi

