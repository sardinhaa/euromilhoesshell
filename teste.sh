#!/bin/bash

rpt="s"

while [ "$rpt" = "s" ]; do
    echo "aqui esta a chave:"
    
    numbers=()
    stars=()
    
    echo -n "numeros: "
    while [ ${#numbers[@]} -lt 5 ]; do
        numero=$((RANDOM % 50 + 1))
        
        if ! [[ " ${numbers[*]} " =~ " $numero " ]]; then
            numbers+=($numero)
            echo -n "$numero "
        fi
    done

    echo -n "estrelas: "
    while [ ${#stars[@]} -lt 2 ]; do
        estrelas=$((RANDOM % 12 + 1))
        
        if ! [[ " ${stars[*]} " =~ " $estrelas " ]]; then
            stars+=($estrelas)
            echo -n "$estrelas "
        fi
    done

    echo

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done

echo "adeus"
