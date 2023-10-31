#!/bin/bash

rpt="s"

while [ "$rpt" = "s" ]; do
        echo "aqui esta a chave:"
        echo -n "numeros: "
        for ((i = 1; i <= 5; i++)); do
            numero=$((RANDOM % 50 + 1))
            echo -n "$numero "
        done

        echo -n "estrelas: "
        for ((i = 1; i <= 2; i++)); do
            estrelas=$((RANDOM % 12 + 1))
            echo -n "$estrelas "
        done

        echo

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done

echo "adeus"

while [[ " ${numeros_1_12[@]} " =~ " $randomNum " ]]; do
       echo "Número $randomNum já existe no intervalo 1-12. Gerando outro número."
       randomNum=$((RANDOM%12+1))
       echo "Novo número gerado: $randomNum"
   done
   numeros_1_12+=("$randomNum")
   echo "$randomNum" >> "$ficheiro"
   contador=$(($contador+1))


