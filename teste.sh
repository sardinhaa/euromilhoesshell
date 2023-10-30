#!/bin/bash

clear

function loop() {
    echo "Loop while com 5 vezes:"

    i=0
    while [ $i -lt 5 ]; do
        randomNumber=$((RANDOM % 50 + 1))
        echo "Número aleatório de 1 a 50: $randomNumber"

        randomNumber=$((RANDOM % 12 + 1))
        echo "Número aleatório de 1 a 12: $randomNumber"

        i=$((i + 1))
    done
}

while true; do
    loop

    echo "Deseja repetir a sequência? (s/n)"
    read answer

    if [ "$answer" = "n" ]; then
        break
    fi
done
