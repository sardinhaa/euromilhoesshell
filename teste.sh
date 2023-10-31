#!/bin/bash

rpt="s"


while [[ " ${numeros[@]} " =~ " $randomNum " ]]; do
       echo "Número $randomNum já existe no intervalo 1-12. Gerando outro número."
       randomNum=$((RANDOM%12+1))
       echo "Novo número gerado: $randomNum"
   done
   numeros_1_12+=("$randomNum")
   echo "$randomNum" >> "$ficheiro"
   contador=$(($contador+1))
        done

while [[ " ${estrelas[@]} " =~ " $randomNum " ]]; do
       echo "Número $randomNum já existe no intervalo 1-12. Gerando outro número."
       randomNum=$((RANDOM%12+1))
       echo "Novo número gerado: $randomNum"
   done
   numeros_1_12+=("$randomNum")
   echo "$randomNum" >> "$ficheiro"
   contador=$(($contador+1))
        done

        echo

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done

echo "adeus"



