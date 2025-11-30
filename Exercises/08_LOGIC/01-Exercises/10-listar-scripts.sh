#!/bin/bash
# Autor: Nat
# Fecha: 2025-11
# Descripción: Lista todos los archivos .sh del directorio actual

echo "Scripts encontrados:"
for file in *.sh; do
    echo "- $file"
done
