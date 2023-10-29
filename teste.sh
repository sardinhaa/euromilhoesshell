#!/bin/bash

function gera_numeros {
    numeros=$(shuf -i 1-45 -n 5)
    numeros="$numeros +"
    numeros_aux=$(shuf -i 1-12 -n 2)
    numeros="$numeros $numeros_aux"
    echo $numeros
}

function pergunta_repetir {
    read -p "Deseja gerar outra chave? (y/n): " resposta
    if [[ $resposta == 'y' ]] || [[ $resposta == 'y' ]]; then
        return 1
    else
        return 0
    fi
}

while true; do
    echo "Chave gerada: $(gera_numeros)"
    if ! pergunta_repetir; then
        break
    fi
done

