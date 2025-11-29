# PROCESOS Y ALIAS

# Ejercicios

---

### 1. Muestra todos los procesos del sistema.

Comando: 

```bash
ps aux
```

Salida:

```bash
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1  21652 12156 ?        Ss   14:23   0:01 /sbin/init
root           2  0.0  0.0   3072  1664 ?        Sl   14:23   0:00 /init
natx         368  0.0  0.1  20312 11136 ?        Ss   14:24   0:00 /usr/lib/systemd/systemd --user
natx         369  0.0  0.0  21152  3520 ?        S    14:24   0:00 (sd-pam)
natx         393  0.0  0.0   6072  4992 pts/1    S+   14:24   0:00 -bash
natx        2142 66.6  0.0   8280  4096 pts/0    R+   15:15   0:00 ps aux
.....
```

Explicación:

| Campo | Significado |
| --- | --- |
| `USER` | Usuario que ejecuta el proceso |
| `PID` | ID del proceso (número que lo identifica) |
| `%CPU` | Porcentaje de CPU que consume |
| `%MEM` | Memoria RAM utilizada |
| `STAT` | Estado del proceso (Running, Sleeping, etc.) |
| `COMMAND` | Comando que generó el proceso |

Este comando lista **todos los procesos activos en el sistema**, no solo los del usuario actual. Es uno de los más usados para administración.

### 2. Muestra el monitor interactivo de procesos.

Comando:

```bash
top
```

Salida:

```bash
top - 15:22:42 up 58 min,  1 user,  load average: 0.00, 0.00, 0.00
Tasks:  25 total,   1 running,  24 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.1 sy,  0.0 ni, 99.9 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 
MiB Mem :   7623.2 total,   7138.1 free,    473.7 used,    162.6 buff/cache     
MiB Swap:   2048.0 total,   2048.0 free,      0.0 used.   7149.5 avail Mem 

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                        
     93 root      20   0   25140   6144   4864 S   0.3   0.1   0:05.40 systemd-udevd                  
   2391 natx      20   0    9264   5376   3328 R   0.3   0.1   0:00.06 top                            
      1 root      20   0   21652  12156   9084 S   0.0   0.2   0:01.56 systemd         
```

Explicación:

`top` muestra un monitor en tiempo real con:

| Información | Descripción |
| --- | --- |
| CPU – RAM usadas | Estado del rendimiento del sistema |
| Procesos activos | Cuántos están ejecutándose o dormidos |
| PID – %CPU – %MEM | Permite detectar procesos pesados |
| Interfaz interactiva | Puedes terminar procesos dentro de `top` |

<aside>
💡

Para salir solo presiona: **`q`**

</aside>

### 3. Utiliza el comando free de manera correcta.

Comando recomendado:

```bash
free -h
```

Salida:

```bash
               total        used        free      shared  buff/cache   available
Mem:           7.4Gi       476Mi       7.0Gi       3.5Mi       163Mi       7.0Gi
Swap:          2.0Gi          0B       2.0Gi
```

Explicación:

`free` permite ver el uso de memoria RAM del sistema.

| Parámetro | Significado |
| --- | --- |
| `-h` | Muestra valores en formato legible (MB/GB) |
| `total` | Memoria disponible en el sistema |
| `used` | Memoria actualmente en uso |
| `free` | Memoria libre sin ocupar |
| `shared` | Memoria usada por procesos compartidos |
| `buff/cache` | RAM reservada para mejorar rendimiento |
| `available` | RAM realmente disponible para usar |

El comando **free -h** es la mejor forma de visualizar memoria de manera clara y entendible.

### 4. Lanza sleep 100 en la terminal, suspéndelo, mándalo al segundo plano y tráelo al primer plano.

Comandos:

- Paso 1 — Ejecutar el proceso:

```bash
sleep 100 
```

*(El comando queda corriendo esperando 100 segundos)*

- Paso 2 — Suspenderlo con `Ctrl + Z` :

```bash
[1]+  Stopped                 sleep 100
```

Suspendiste el proceso y quedó detenido temporalmente.

- Paso 3 — Enviarlo al segundo plano:

```bash
bg
```

Salida:

```bash
[2]+ sleep 100 &
```

Ahora el proceso sigue ejecutándose pero en **background**.

- Paso 4 — Consultar procesos en fondo:

```bash
jobs
```

Salida:

```bash
[1]+  Stopped                 sleep 100
```

- Paso 5 — Regresarlo al primer plano:

```bash
fg %1
```

`%1` indica el número de job, pero puede variar.

Explicación general: 

| Acción | Comando |
| --- | --- |
| Inicia proceso | `sleep 100` |
| Suspende ejecución | `Ctrl + Z` |
| Envía al segundo plano | `bg` |
| Muestra procesos en segundo plano | `jobs` |
| Trae proceso al primer plano | `fg %id` |

### 5. Lanza un proceso como sleep y termínalo usando su PID.

Comandos:

- Paso 1 — Ejecutar un proceso en segundo plano:

```bash
sleep 150 &
```

Salida: 

```bash
[1] 4785
```

<aside>
💡

El número final es el **PID (Process ID)** del proceso.

</aside>

- Paso 2 — Ver todos los procesos con su PID

```bash
ps
```

Salida:

```bash
 PID TTY          TIME CMD
    314 pts/0    00:00:02 bash
   4785 pts/0    00:00:00 sleep
   4848 pts/0    00:00:00 ps
```

- Paso 3 — Finalizar el proceso con `kill`

```bash
kill 4785
```

Verificar que ha terminado:

```bash
Verificar que ha terminado
```

Si no aparece en la lista, entonces el proceso fue eliminado exitosamente.

Explicación:

| Comando | Función |
| --- | --- |
| `sleep 150 &` | Ejecuta un proceso en segundo plano |
| `ps` | Muestra procesos y su PID |
| `kill PID` | Finaliza el proceso indicado |

### 6. Consulta el espacio en disco.

Comando:

```bash
df -h
```

Salida:

```bash
Filesystem      Size  Used Avail Use% Mounted on
none            3.8G     0  3.8G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            3.8G  4.0K  3.8G   1% /mnt/wsl
drivers         301G  146G  155G  49% /usr/lib/wsl/drivers
................
```

**Explicación:**

`df` muestra el uso del disco del sistema.

| Parámetro | Significado |
| --- | --- |
| `-h` | Muestra tamaños legibles (GB/MB) |
| `Size` | Tamaño total del disco |
| `Used` | Espacio utilizado |
| `Avail` | Espacio libre disponible |
| `Use%` | Porcentaje ocupado |

### 7. Consulta el historial.

Comando:

```bash
history
```

Salida:

```bash
	248  ls
  249  ls -l permisos.txt
  250  nano archivo_umask.txt
  251  ls -l archivo_umask.txt
```

Explicación:

| Comando | Función |
| --- | --- |
| `history` | Muestra el historial de comandos ejecutados |

### 8. Repite el último comando.

Comando:

```bash
!!
```

Salida:

```bash
ls
Cursos    LICENSE.txt  apuntes.txt        bash-exercises  ejemplo.txt  permisos.txt  prueba.txt
Hola.txt  Text.txt     archivo_umask.txt  carpeta_prueba  nota.txt     privada
```

Explicación:

| Comando | Acción |
| --- | --- |
| `!!` | Ejecuta el comando anterior nuevamente |
| `!n` | Ejecuta el comando número *n* del historial (opcional) |

### 9. Crea y prueba un alias.

Comando:

```bash
alias ll="ls -lah"
```

- Este alias ejecuta `ls` con formato largo, mostrando permisos, tamaños legibles y archivos ocultos.

Probar el alias:

```bash
ll
```

Salida:

```bash
total 52K
drwxr-xr-x 6 natx     natx 4.0K Nov 28 19:18 .
drwxr-xr-x 4 natx     natx 4.0K Nov 25 20:56 ..
drwxr-xr-x 2 natx     natx 4.0K Nov 25 20:46 Cursos
-rw-r--r-- 1 natx     natx 1.2K Nov 26 20:40 Hola.txt
-rw-r--r-- 1 natx     natx  458 Nov 26 20:39 LICENSE.txt
-rw-r--r-- 1 natx     natx  492 Nov 26 19:16 Text.txt
-rw-r--r-- 1 natx     natx  143 Nov 27 16:43 apuntes.txt
-rw------- 1 natx     natx  139 Nov 28 19:18 archivo_umask.txt
drwxr-xr-x 2 natx     natx 4.0K Nov 25 20:27 bash-exercises
drwxr-xr-x 2 natx     natx 4.0K Nov 28 11:37 carpeta_prueba
-rw-r--r-- 1 natx     natx   18 Nov 27 11:12 ejemplo.txt
-rw-r--r-- 1 natx     natx  163 Nov 27 13:53 nota.txt
-rwx------ 1 testuser natx    0 Nov 27 19:11 permisos.txt
drwx------ 2 natx     natx 4.0K Nov 28 10:23 privada
-rw-r--r-- 1 natx     natx    0 Nov 28 11:35 prueba.txt
```

Explicación: 

Un **alias** sirve para crear un comando abreviado o personalizado que reemplaza a uno más largo. Son útiles para ahorrar tiempo, automatizar tareas o definir comandos con opciones por defecto.

### 10. Elimina el alias que acabas de crear.

Comando:

```bash
unalias ll
```

Para verificar que ya no existe:

```bash
ll
```

Debería mostrar un error como:

```bash
ll: command not found
```