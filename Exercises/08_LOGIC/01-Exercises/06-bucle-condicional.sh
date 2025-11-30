#!/bin/bash

for num in {1..10}; do

    if [ $num -eq 5 ]; then
        continue   # Salta el número 5 y sigue con el siguiente
    fi

    if [ $num -eq 8 ]; then
        break      # Detiene el bucle al llegar al 8
    fi

    echo "Número: $num"

done
