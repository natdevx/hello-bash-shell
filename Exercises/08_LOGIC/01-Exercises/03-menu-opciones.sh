#!/bin/bash

echo "===== MENÚ ====="
echo "1) Saludar"
echo "2) Mostrar fecha"
echo "3) Mostrar archivos del directorio actual"
echo "================"
read -p "Elige una opción: " opcion

case $opcion in
    1) echo "Hola! espero que estés aprendiendo mucho Bash 🚀" ;;
    2) date ;;
    3) ls ;;
    *) echo "Opción no válida. Intenta nuevamente." ;;
esac
