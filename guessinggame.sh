#!/bin/bash

function count_files {
    ls -1 | wc -l
}

correct_count=$(count_files)

echo "¡Adivina cuántos archivos hay en este directorio!"
read -p "Ingresa tu guess: " guess

while [[ $guess -ne $correct_count ]]; do
    if [[ $guess -lt $correct_count ]]; then
        echo "Muy bajo. ¡Intenta de nuevo!"
    else
        echo "Muy alto. ¡Intenta de nuevo!"
    fi
    read -p "Ingresa tu guess: " guess
done

echo "¡Felicidades! Adivinaste. Hay $correct_count archivos."