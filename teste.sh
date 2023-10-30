#!/bin/bash

# Função para verificar se o número já foi sorteado
verificar_sorteio() {
    numero=$1
    while read -r sorteio; do
        if [ "$numero" -eq "$sorteio" ]; then
            return 1
        fi
    done < "$2"
    return 0
}

# Variáveis para controlar o loop e a chave
chave=0
repetir=true

while [ "$repetir" = true ]; do

    echo "Gerando chave para o jogo Euro-Milhões..."

    # Loop para sortear 5 números entre 1 e 50
    for i in {1..5}; do
        sorteio=$(($RANDOM % 50 + 1)))
        while verificar_sorteio "$sorteio" "$chave"; do
            sorteio=$(($RANDOM % 50 + 1)))
        done
        echo "Número sorteado $i: $sorteio"
        echo "$sorteio" >> "$chave"
    done

    # Loop para sortear 2 números entre 1 e 12
    for i in {1..2}; do
        sorteio_euro_milhoes=$(($RANDOM % 12 + 1)))
        while verificar_sorteio "$sorteio_euro_milhoes" "$chave"; do
            sorteio_euro_milhoes=$(($RANDOM % 12 + 1)))
        done
        echo "Número sorteado para o Euro-Milhões $i: $sorteio_euro_milhoes"
        echo "$sorteio_euro_milhoes" >> "$chave"
    done

    # Perguntar se deseja gerar outra chave
    read -p "Deseja gerar outra chave? (s/n) " resposta

    if [ "$resposta" = s ]; then
        repetir=true
        chave="$chave"_outro
    else
        repet
