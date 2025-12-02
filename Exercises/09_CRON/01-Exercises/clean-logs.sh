#!/bin/bash
# Script para limpiar logs temporales
# Autor: Nat
# Fecha: $(date)
# Descripción: Elimina archivos .log en /home/natx/temp

CARPETA="/home/natx/Bash-course/Cron"

find $CARPETA -name "*.log" -type f -delete

echo "Archivos .log eliminados correctamente en $CARPETA"
