#!/bin/bash

cp archivo.txt destino/ 2>/dev/null

if [ $? -ne 0 ]; then
    echo "Error: El archivo no existe o no se pudo copiar."
fi
