#!/bin/bash

contador=0
numero=1  # Valor inicial para entrar al while

while [ $numero -ne 0 ]; do
    read -p "Introduce un número (0 para salir): " numero
    if [ $numero -ne 0 ]; then
        contador=$((contador + 1))
    fi
done

echo "Ingresaste un total de $contador números."
