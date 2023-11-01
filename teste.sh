#!/bin/bash

rpt="s"

while [ "$rpt" = "s" ]; do
    echo "aqui esta a chave:"
    
    numb=()
    st=()
    
    echo -n "numeros: "
    while [ ${#numb[@]} -lt 5 ]; do
        num=$((RANDOM % 50 + 1))
        
        if ! [[ " ${numbers[*]} " =~ " $num " ]]; then
            numb+=($num)
            echo -n "$num "
        fi
    done

    echo -n "estrelas: "
    while [ ${#st[@]} -lt 2 ]; do
        est=$((RANDOM % 12 + 1))
        
        if ! [[ " ${st[*]} " =~ " $est " ]]; then
            st+=($est)
            echo -n "$est "
        fi
    done

    echo

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done

echo "adeus"
