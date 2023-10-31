#!/bin/bash

rpt="s"

while [ "$rpt" = "s" ]; do
        echo "aqui esta a chave:"
        echo -n "numeros: "
        for ((i = 1; i <= 5; i++)); ger50 in {1..5}; do
            numero=$((RANDOM % 50 + 1))
            echo -n "$numero "
        done

        echo -n "estrelas: "
        for ((i = 1; i <= 2; i++)); ger12 in {1..2}; do
            estrelas=$((RANDOM % 12 + 1))
            echo -n "$estrelas "
        done

        echo

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done

while [ "$rpt" = "n" ];do 
    echo "adeus" 
    break
done


