#!/bin/bash

rpt="s"

while [ "$rpt" = "s" ]; do
    for i in {1..5}; do
        echo "aqui esta a chave:"
        echo -n "Números: "
        for j in {1..5}; do
            numero=$((1 + RANDOM % 50))
            echo -n "$numero "
        done

        echo -n "Estrelas: "
        for k in {1..2}; do
            estrelas=$((1 + RANDOM % 12))
            echo -n "$estrelas "
        done

        echo
    done

    read -p "queres gerar outra chave para o euromilhoes? (s/n): " rpt
done
