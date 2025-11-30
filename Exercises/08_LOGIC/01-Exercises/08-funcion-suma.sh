#!/bin/bash

sumar() {
    resultado=$(( $1 + $2 ))   # Suma los argumentos
    echo $resultado            # Se imprime para capturar el valor
}

valor=$(sumar 6 8)
echo "La suma es: $valor"
