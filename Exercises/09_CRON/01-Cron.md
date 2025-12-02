# CRON

# Ejercicios

---

### 1. Crea un script que muestre la fecha y hora actual en un archivo. Programa su ejecución cada minuto con una cron.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano fecha.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Script para guardar fecha/hora
    date >> /home/natx/Bash-course/Cron/fecha.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x fecha.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    * * * * * /home/natx/Bash-course/Cron/fecha.sh
    ```
    

Salida: 

- Ejecución:
    
    ```bash
    cat fecha.log
    #Resultado
    Mon Dec  1 12:01:01 CST 2025
    Mon Dec  1 12:02:01 CST 2025
    Mon Dec  1 12:03:01 CST 2025
    Mon Dec  1 12:04:01 CST 2025
    Mon Dec  1 12:05:01 CST 2025
    ```
    

### 2. Crea un script que muestre "Hola desde cron" en un archivo. Configura cron para ejecutarlo cada 5 minutos.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano hola.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    echo "Hola desde cron" >> /home/natx/Bash-course/Cron/hola.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x hola.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    */5 * * * * /home/natx/Bash-course/Cron/hola.sh
    ```
    
    - `*/5` : se ejecuta **cada 5 minutos**.

Salida: 

- Ejecución:
    
    ```bash
    cat hola.log
    #Resultado
    Hola desde cron
    Hola desde cron
    Hola desde cron
    ```
    

Explicación:

| Campo | Significa |
| --- | --- |
| `minuto` | 0–59 |
| `hora` | 0–23 |
| `día del mes` | 1–31 |
| `mes` | 1–12 |
| `día de la semana` | 0–7 (domingo=0/7) |
- Ejemplo general:

```bash
* * * * * comando  → cada minuto
*/5 * * * * comando → cada 5 minutos
0 * * * * comando  → cada hora
```

### 3. Escribe un script de backup que comprima una carpeta en un archivo con fecha. Programa su ejecución cada día a las 2:00 AM.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano backup.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Script de backup automático
    # Autor: Nat
    # Fecha: $(date)
    # Descripción: Comprime una carpeta y crea backup con fecha en el nombre.
    
    FECHA=$(date +%Y-%m-%d)                         # Genera fecha AAAA-MM-DD
    ORIGEN="/home/natx/Bash-course/Cron/proyecto"   # Carpeta a respaldar
    DESTINO="/home/natx/Bash-course/Cron/proyecto/Backups"  # Carpeta donde se guardarán los backups
    
    mkdir -p $DESTINO                               # Crea la carpeta destino si no existe
    tar -czf $DESTINO/backup-$FECHA.tar.gz $ORIGEN
    
    echo "Backup generado correctamente: backup-$FECHA.tar.gz"
    
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x backup.sh
    ./backup.sh   # Para probarlo antes de usar cron
    ```
    
- Si todo está bien, revisa la carpeta destino:
    
    ```bash
    ls /home/natx/Bash-course/Cron/proyecto/Backups/
    ```
    
- Deberías ver algo como:
    
    ```bash
    backup-2025-12-01.tar.gz
    ```
    

### Programar ejecución diaria a las **2:00 AM**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 2 * * * /home/natx/Bash-course/Cron/proyecto/backup.sh
    ```
    

Explicación:

- `tar -czf` : Comprime en formato `.tar.gz`
- `$(date +%Y-%m-%d)` : Inserta la fecha en el nombre del archivo
- `crontab` ejecuta el backup automáticamente todos los días a las 2 AM

Este script crea respaldos diarios con un nombre único basado en fecha, esto es útil porque mantienen el historial de copias.

### 4. Haz un script que borre archivos .log de una carpeta temporal. Programa su ejecución todos los domingos a la medianoche.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano clean-logs.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Script para limpiar logs temporales
    # Autor: Nat
    # Fecha: $(date)
    # Descripción: Elimina archivos .log en /home/natx/temp
    
    CARPETA="/home/natx/Bash-course/Cron"
    
    find $CARPETA -name "*.log" -type f -delete
    
    echo "Archivos .log eliminados correctamente en $CARPETA"
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x clean-logs.sh
    ```
    
- Para probarlo manualmente:
    
    ```bash
    ./clean-logs.sh
    ```
    
- Ver si se eliminaron los `.log`:
    
    ```bash
    ls
    
    clean-logs.sh  fecha.sh  hola.sh  proyecto
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 0 * * 0 /home/natx/Bash-course/Cron/clean-logs.sh
    ```
    

Explicación:

- `find` busca archivos `.log`
- `-delete` los elimina automáticamente
- cron ejecuta el script cada domingo a las 00:00

Ideal para mantener carpetas temporales limpias sin esfuerzo.

### 5. Programa un script que escriba la hora actual, ejecutándose cada hora de 9 a 17 (horario laboral).

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano hora.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Script para registrar hora actual
    echo "Hora actual: $(date +"%H:%M:%S")" >> /home/natx/Bash-course/Cron/hora.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x hora.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 9-17 * * * /home/natx/Bash-course/Cron/hora.sh
    ```
    

Salida:

```bash
cat hora.log

Hora actual: 19:12:56
Hora actual: 19:14:25
```

Explicación:

- `0 9-17 * * *` : se ejecuta al minuto 0 de cada hora desde 9 hasta 17.
- Redirige la hora actual a `hora.log`.
- Se agregan nuevas líneas cada hora.

### 6. Programa un script que muestre "Hoy toca practicar" en un archivo de log solo los lunes, miércoles y viernes a las 8:00 AM.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano practica.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    echo "Hoy toca practicar - $(date)" >> /home/natx/Bash-course/Cron/practica.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x practica.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 8 * * 1,3,5 /home/natx/Bash-course/Cron/practica.sh
    ```
    

Salida:

```bash
cat practica.log

Hoy toca practicar - Mon Dec  1 19:23:16 CST 2025
```

Explicación:

- `1,3,5` : Lunes(1), Miércoles(3), Viernes(5)
- Se ejecuta a las **8:00 AM**
- Guarda un registro con fecha para llevar control de práctica.

### 7. Modifica uno de los scripts para que su salida y errores se guarden en cron.log.

Comandos: 

- Vamos a modificar **cualquier script**; ejemplo: `practica.sh`
    
    ```bash
    nano practica.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    echo "Hoy toca practicar - $(date)"
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 8 * * 1,3,5 /home/natx/Bash-course/Cron/practica.sh >> /home/natx/Bash-course/Cron/cron.log 2>&1
    ```
    

Salida:

```bash
cat practica.log

Hoy toca practicar - Mon Dec  1 19:23:16 CST 2025
```

Explicación:

- `>> cron.log` : Guarda la salida estándar.
- `2>&1` : Guarda también errores.
- Muy útil cuando un cron falla y no sabes por qué.

### 8. Programa un script que muestre "Sistema OK" y lo ejecute cada 10 minutos.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano sistema-ok.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    echo "Sistema OK - $(date)" >> /home/natx/Bash-course/Cron/sistema-ok.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x sistema-ok.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    */10 * * * * /home/natx/Bash-course/Cron/sistema-ok.sh
    ```
    

Salida:

```bash
cat sistema-ok.log

Sistema OK - Mon Dec  1 19:47:46 CST 2025
```

Explicación:

- `/10` : Se ejecuta cada 10 minutos.
- Registra la frase + fecha y hora.
- Útil como “heartbeat” o monitor simple del sistema.

### 9. Crea un script que genere un archivo con la fecha actual. Prográmalo para ejecutarse el primer día de cada mes a medianoche.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano generar_fecha.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    # Genera un archivo con la fecha actual
    
    fecha=$(date '+%Y-%m-%d_%H-%M-%S')
    echo "Fecha generada: $fecha" > "/home/natx/Bash-course/Cron/fecha_$fecha.txt"
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x generar_fecha.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    0 0 1 * * /home/natx/Bash-course/Cron/sistema-ok.sh
    ```
    

Salida:

```bash
ls

fecha_2025-12-01_20-05-46.txt
```

### 10. Configura un script que escriba "Probando cron" en un archivo. Después, buscar información para revisar los logs del sistema y confirmar su ejecución.

Comandos: 

- Crear y editar el archivo:
    
    ```bash
    nano probar_cron.sh
    ```
    
- Contenido del Script:
    
    ```bash
    #!/bin/bash
    echo "Probando cron - $(date)" >> /home/natx/Bash-course/Cron/cron_test.log
    ```
    
- Guardar y darle permisos de ejecución:
    
    ```bash
    chmod +x probar_cron.sh
    ```
    

### **Programar tarea con cron**

- Abrimos el editor de cron:
    
    ```bash
    crontab -e
    ```
    
- Agregar la siguiente línea:
    
    ```bash
    * * * * * /home/natx/Bash-course/Cron/probar_cron.sh
    ```
    

Salida

```bash
cat cron_test.log

Probando cron - Mon Dec  1 20:25:01 CST 2025
Probando cron - Mon Dec  1 20:25:40 CST 2025
Probando cron - Mon Dec  1 20:26:01 CST 2025
```