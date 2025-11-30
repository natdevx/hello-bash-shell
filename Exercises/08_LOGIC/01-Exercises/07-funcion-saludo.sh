#!/bin/bash

saludar() {
    nombre=$1  # Primer argumento recibido por la función
    echo "Hola $nombre, bienvenido al script."
}

saludar "Nat"    # Puedes cambiar el nombre para probar

