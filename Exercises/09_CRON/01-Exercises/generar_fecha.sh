#!/bin/bash
# Genera un archivo con la fecha actual

fecha=$(date '+%Y-%m-%d_%H-%M-%S')
echo "Fecha generada: $fecha" > "/home/natx/Bash-course/Cron/fecha_$fecha.txt"
