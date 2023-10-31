#!/bin/bash

while true; do
    echo "Chave do EuroMilhões:"

    echo -n "Números: "
    for ((i = 1; i <= 5; i++)); do
    numero=$(( RANDOM % 50 + 1))
    echo -n "$numero "
    done

    echo -n "Estrelas: "
    for ((i = 1; i <= 2; i++)); do
    estrela=$((1 + RANDOM % 12))
    echo -n "$estrela "
    done

    echo

    read -p "Deseja gerar outra chave? (S para sim, qualquer tecla para sair): " resposta
    if [ "$resposta" != "S" ] && [ "$resposta" != "s" ]; then
    break
    fi
done
